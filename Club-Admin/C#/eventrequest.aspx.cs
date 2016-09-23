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
    public partial class eventrequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Label2.Text = Convert.ToString(Session["name"]);
                Label8.Text = Convert.ToString(Session["name"]);
                SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
                string clubname = Convert.ToString(Session["name"]);
                SqlDataAdapter add = new SqlDataAdapter("select Id,Name,Email,EventName,Members,EventDate,Location,Facilities from EventRequest where ClubName='" + clubname + "' and stus=0", conn);
                DataTable dt = new DataTable();
                add.Fill(dt);
                GridView1.DataSource = dt;
                
                GridView1.DataBind();

                if (dt.Rows.Count == 0)
                {
                    Response.Write("<script>alert('There is no new request')</script>");
                    Label3.Text = "There is no new request";
                }
               
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "accept")
            {
                SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
                SqlDataAdapter add2 = new SqlDataAdapter("select * from EventRequest where id = " + e.CommandArgument, conn);
                DataTable dat = new DataTable();
                add2.Fill(dat);
                string email = dat.Rows[0]["Email"].ToString();
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("clubproject2@gmail.com");
                mail.To.Add(email);
                mail.Subject = "Reg Event Request";

                mail.Body = "Your Request has apporved contact Admin for futher details"; 

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("clubproject2@gmail.com", "kaspon@123");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

                //---------------------------------------------

                string type = Convert.ToString(Session["clubtype"]);
                string updqry = "update EventRequest set stus = 1 where id =" + e.CommandArgument;
                conn.Open();
                SqlCommand upcmd = new SqlCommand(updqry, conn);
                int d = upcmd.ExecuteNonQuery();
                conn.Close();

                Response.Redirect("eventrequest.aspx");

                //----------------------------------------

                
            }
            if (e.CommandName == "reject")
            {
                SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
                SqlDataAdapter add2 = new SqlDataAdapter("select * from EventRequest where id = " + e.CommandArgument, conn);
                DataTable dat = new DataTable();
                add2.Fill(dat);
                string email = dat.Rows[0]["Email"].ToString();
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("clubproject2@gmail.com");
                mail.To.Add(email);
                mail.Subject = "Reg Event Request";

                mail.Body = "Your Request has rejected contact Admin for futher details";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("clubproject2@gmail.com", "kaspon@123");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

                string qry = "delete EventRequest where id=" + e.CommandArgument;
                conn.Open();
                SqlCommand cmd = new SqlCommand(qry, conn);
                int a = cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("eventrequest.aspx");
            }

        }
    }
}