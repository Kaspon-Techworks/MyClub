using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Club
{
    public partial class memberrequest : System.Web.UI.Page
    {
        SqlConnection conn;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Label3.Text = Convert.ToString(Session["name"]);
                Label8.Text = Convert.ToString(Session["name"]);
                int id = Convert.ToInt32(Session["id"]);

                string type = null;
                if (id == 1)
                {
                    type = "AluminiClub";
                    Session["clubtype"] = type;
                }
                else if (id == 2)
                {
                    type = "LaughterClub";
                    Session["clubtype"] = type;
                }
                else if (id == 3)
                {
                    type = "SportdClub";
                    Session["clubtype"] = type;
                }
                else if (id == 4)
                {
                    type = "HealthClub";
                    Session["clubtype"] = type;
                }
                else if (id == 5)
                {
                    type = "Entreprenurs";
                    Session["clubtype"] = type;
                }
                else if (id == 6)
                {
                    type = "MusicClub";
                    Session["clubtype"] = type;
                }


                conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
                SqlDataAdapter add = new SqlDataAdapter("select Id,Name,Mobile,Email,Gender,CurrentAddress from " + type + " where stus = 0 and ClubName='" + Session["name"] + "'", conn);
                DataTable dd = new DataTable();
                add.Fill(dd);               
                GridView1.DataSource = dd;
                GridView1.DataBind();
                if (dd.Rows.Count == 0)
                {
                    Response.Write("<script>alert('There is no new request')</script>");
                    
                }
            }
            else {
                Response.Redirect("login.aspx");
            }
        }
       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
            int id = Convert.ToInt32(Session["id"]);
            string type = null;
           
            if (id == 1)
            {
                type = "AluminiClub";
               
            }
            else if (id == 2)
            {
                type = "LaughterClub";
               
            }
            else if (id == 3)
            {
                type = "SportdClub";
              
            }
            else if (id == 4)
            {
                type = "HealthClub";
               
            }
            else if (id == 5)
            {
                type = "Entreprenurs";
                
            }
            else if (id == 6)
            {
                type = "MusicClub";
            }
            if (e.CommandName == "accept")
            {
                Response.Write("<script>alert('confirmation mail send')</script>");  
                SqlDataAdapter add = new SqlDataAdapter("select count(*) as count from " + type + " where stus = 1 ", conn);
                DataTable dd = new DataTable();
                add.Fill(dd);
                int a = Convert.ToInt32(dd.Rows[0]["count"]);
                
                string name = Session["name"].ToString();
                a++;
                string userid = name + a;
                //----------------------------------------------------------------------------------------------------------

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
                //-----------------------------------------------------------------------
               SqlDataAdapter add2 = new SqlDataAdapter("select * from " + type + " where id = "+e.CommandArgument,conn);
               DataTable dat = new DataTable();
                add2.Fill(dat);
                
                Label1.Text = userid;
                Label2.Text = otp;
                string uname = dat.Rows[0]["Name"].ToString();
                string email = dat.Rows[0]["Email"].ToString();
                string clubid = Convert.ToString(Session["clubid"]);
                string qry = "insert into MemLog(uname,pass,ClubId,ClubTypeId,Name,ClubName,Loginstus) values('" + userid + "','" + otp + "','" + clubid + "','" + id + "','" + uname + "','" + name + "',0)";
                
             //---------------------------------------------------------------------------------------------
                string updqry = "update " + type + " set stus = 1 where id ="+e.CommandArgument;
                conn.Open();
                SqlCommand upcmd = new SqlCommand(updqry, conn);
                int d = upcmd.ExecuteNonQuery();
                conn.Close();

                if ( d > 0)
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(qry, conn);
                    int c = cmd.ExecuteNonQuery();
                    conn.Close();
                }
                //-----------------------------------------------------------------------
               
                //--------------------------------------------------------------------------------
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("clubproject2@gmail.com");
                mail.To.Add(email);
                mail.Subject = "Reg Login Password";

                mail.Body = "Your login UserId  is: " + userid + "\n Password :" +otp;

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("clubproject2@gmail.com", "kaspon@123");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
               

                Response.Redirect("memberrequest.aspx");




                
            }

            if (e.CommandName == "reject")
            {
                SqlDataAdapter add2 = new SqlDataAdapter("select * from " + type + " where id = " + e.CommandArgument, conn);
                DataTable dat = new DataTable();
                add2.Fill(dat);
                string uname = dat.Rows[0]["Name"].ToString();
                string email = dat.Rows[0]["Email"].ToString();

                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("clubproject2@gmail.com");
                mail.To.Add(email);
                mail.Subject = "Reg Login Password";

                mail.Body = "Your Request is rejected";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("clubproject2@gmail.com", "kaspon@123");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
              
                string qry = "delete " + type + " where id = " + e.CommandArgument;
                conn.Open();
                SqlCommand cmd = new SqlCommand(qry, conn);
                int a = cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("memberrequest.aspx");
            }

            if (e.CommandName == "view")
            {
                SqlDataAdapter add2 = new SqlDataAdapter("select * from " + type + " where id = " + e.CommandArgument, conn);
                DataTable dat = new DataTable();
                add2.Fill(dat);
                string name = Convert.ToString(dat.Rows[0]["Name"]);
                GridView2.DataSource = dat;
                GridView2.DataBind();
                ModalPopupExtender1.Show();
                
            }
            
        }
       
    }
}