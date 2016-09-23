using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace club_final
{
    public partial class newcustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (Session["username1"] == null || Session["username1"].ToString() == string.Empty)
            {
                Response.Redirect("login1.aspx");
            }
            SqlConnection conn;
            conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123;");
            SqlDataAdapter adapter =
               new SqlDataAdapter("select count(*) from ClubRegister where stas=0", conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            Label1.Text = dt.Rows[0][0].ToString();
            SqlDataAdapter adapter1 =
               new SqlDataAdapter("select count(*) from ClubRegister where stas=1", conn);
            DataTable dt1 = new DataTable();
            adapter1.Fill(dt1);
            Label2.Text = dt1.Rows[0][0].ToString();
        }
        public void signout()
        {
            Session["username1"] = string.Empty;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "myView")
            {
                Session["clubname"] = e.CommandArgument;
                Response.Redirect("viewdetails1.aspx");

            }
            else if (e.CommandName == "myAccept")
            {
                SqlConnection conn = new SqlConnection("Data Source=User-PC;Initial Catalog=club;User Id=sa;Password=vetri123;");
                SqlCommand cmd = new SqlCommand("UPDATE ClubRegister SET stas=1 WHERE clubName='" + e.CommandArgument + "';", conn);

                cmd.Connection.Open();
                cmd.ExecuteNonQuery();

                SqlDataAdapter adapter =
                  new SqlDataAdapter("select email,adminName,typeofclub,ClubTypeId,id,clubName from ClubRegister WHERE clubName='" + e.CommandArgument + "'; ", conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                cmd.Connection.Close();
                string mailto = Convert.ToString(dt.Rows[0][0]);
                string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
                string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
                string numbers = "1234567890";

                string characters = numbers;

                characters += alphabets + small_alphabets + numbers;

                int length = 6;
                string otp = string.Empty;
                for (int i = 0; i < length; i++)
                {
                    string character = string.Empty;
                    do
                    {
                        int index = new Random().Next(0, characters.Length);
                        character = characters.ToCharArray()[index].ToString();
                    } while (otp.IndexOf(character) != -1);
                    otp += character;
                }
                //lblOTP.Text = otp;
                //----------------------------------------------
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("clubproject2@gmail.com");
                mail.To.Add(mailto);
                mail.Subject = "Reg Login Password";

                mail.Body = "Your login id is:" + dt.Rows[0][1] + "\nYour login password is: " + otp;

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("clubproject2@gmail.com", "kaspon@123");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                SqlCommand cmd1 = new SqlCommand("insert into ClubLogin values('" + dt.Rows[0][1] + "','" + otp + "','" + dt.Rows[0][3] + "','" + dt.Rows[0][5] + "','" + dt.Rows[0][4] + "','" + dt.Rows[0][0] + "')", conn);
                cmd1.Connection.Open();
                cmd1.ExecuteNonQuery();
                cmd1.Connection.Close();
                SqlCommand cmd2 = new SqlCommand("insert into descripition (ClubName) values('" + e.CommandArgument + "');", conn);
                cmd2.Connection.Open();
                cmd2.ExecuteNonQuery();
                cmd2.Connection.Close();
                Response.Redirect("request1.aspx");
            }
            if (e.CommandName == "myReject")
            {
                SqlConnection conn = new SqlConnection("Data Source=User-PC;Initial Catalog=club;User Id=sa;Password=vetri123;");
                SqlDataAdapter adapter =
                      new SqlDataAdapter("select email from ClubRegister WHERE clubName='" + e.CommandArgument + "'; ", conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                string mailto = Convert.ToString(dt.Rows[0][0]);
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("clubproject2@gmail.com");
                mail.To.Add(mailto);
                mail.Subject = "Application Rejected";

                mail.Body = "Your application to register in club project has been rejected";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("clubproject2@gmail.com", "kaspon@123");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                SqlCommand cmd = new SqlCommand("delete from ClubRegister where clubName='" + e.CommandArgument + "'", conn);

                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Response.Redirect("request1.aspx");
            }
        }

        protected void alumni_Click(object sender, EventArgs e)
        {
            Session["request"] = "ALumini Club";
            Response.Redirect("newcustomer.aspx");
        }

        protected void laughter_Click(object sender, EventArgs e)
        {
            Session["request"] = "Laughter Club";
            Response.Redirect("newcustomer.aspx");
        }

        protected void sports_Click(object sender, EventArgs e)
        {
            Session["request"] = "Sports Club";
            Response.Redirect("newcustomer.aspx");
        }

        protected void health_Click(object sender, EventArgs e)
        {
            Session["request"] = "Health Club";
            Response.Redirect("newcustomer.aspx");
        }

        protected void entreprenur_Click(object sender, EventArgs e)
        {
            Session["request"] = "Entreprenur Club";
            Response.Redirect("newcustomer.aspx");
        }

        protected void music_Click(object sender, EventArgs e)
        {
            Session["request"] = "Music Club";
            Response.Redirect("newcustomer.aspx");
        }

        protected void alumni1_Click(object sender, EventArgs e)
        {
            Session["member"] = "ALumini Club";
            Response.Redirect("newrequest.aspx");
        }

        protected void laughter1_Click(object sender, EventArgs e)
        {
            Session["member"] = "Laughter Club";
            Response.Redirect("newrequest.aspx");
        }

        protected void sports1_Click(object sender, EventArgs e)
        {
            Session["member"] = "Sports Club";
            Response.Redirect("newrequest.aspx");
        }

        protected void health1_Click(object sender, EventArgs e)
        {
            Session["member"] = "Health Club";
            Response.Redirect("newrequest.aspx");
        }

        protected void entreprenur1_Click(object sender, EventArgs e)
        {
            Session["member"] = "Entreprenur Club";
            Response.Redirect("newrequest.aspx");
        }

        protected void music1_Click(object sender, EventArgs e)
        {
            Session["member"] = "Music Club";
            Response.Redirect("newrequest.aspx");
        }

       
        
    }
}