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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn; 
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         public void  register()
    {
        Response.Redirect("register.aspx");
    }

         protected void Button1_Click(object sender, EventArgs e)
         {
             conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
             SqlDataAdapter add = new SqlDataAdapter("select * from ClubLogin where uname='" + TextBox1.Text + "'", conn);
             DataTable dd = new DataTable();
             add.Fill(dd);
             if (dd.Rows.Count > 0)
             {
                 var pass = dd.Rows[0]["pass"] ;
                 if (TextBox2.Text == (pass).ToString())
                 {
                     Session["id"] = dd.Rows[0]["ClubTypeId"];
                     Session["name"] = dd.Rows[0]["ClubTypeName"];
                     Session["clubid"] = dd.Rows[0]["ClubId"];
                     int id = Convert.ToInt32(Session["id"]);
                     if (id == 1)
                     {
                         
                         Session["clubtype"] = "AluminiClub";
                     }
                     else if (id == 2)
                     {
                        
                         Session["clubtype"] = "LaughterClub";
                     }
                     else if (id == 3)
                     {
                         
                         Session["clubtype"] = "SportdClub";
                     }
                     else if (id == 4)
                     {
                         
                         Session["clubtype"] = "HealthClub";
                     }
                     else if (id == 5)
                     {
                         
                         Session["clubtype"] = "Entreprenurs";
                     }
                     else if (id == 6)
                     {
                         
                         Session["clubtype"] = "MusicClub";
                     }
                     Response.Redirect("Home.aspx");
                 }
                 else
                 {
                     Label1.Text = "Invalid UserName or Password";
                 }
             }
             else 
             {
                 Label1.Text = "Invalid UserName or Password";
             }
         }

         protected void Button2_Click(object sender, EventArgs e)
         {
            
             conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
             SqlDataAdapter add = new SqlDataAdapter("select * from ClubLogin where Email='" + TextBox3.Text + "'", conn);
             DataTable dd = new DataTable();
             add.Fill(dd);
             if (dd.Rows.Count > 0)
             {
                 Button3.Visible = true;
                 Label3.Text = dd.Rows[0]["ClubTypeName"].ToString();
             }
             else
             {
                 Button3.Visible = false;
                 Label3.Text = "not found";
                 
             }

             ModalPopupExtender2.Show();

         }
        

         protected void TextBox3_TextChanged(object sender, EventArgs e)
         {
             Session["mail"] = TextBox3.Text.ToString();
         }

         protected void Button3_Click(object sender, EventArgs e)
         {
             conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
             SqlDataAdapter add = new SqlDataAdapter("select * from ClubLogin where Email='" + TextBox3.Text + "'", conn);
             DataTable dd = new DataTable();
             add.Fill(dd);
             Label4.Text = "Your password is send to your register Email";
             MailMessage mail = new MailMessage();
             SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
             mail.From = new MailAddress("clubproject2@gmail.com");
             mail.To.Add(TextBox3.Text);
             mail.Subject = "Reg Forgot Password";

             mail.Body = "Your Password for Login is '" + dd.Rows[0]["pass"].ToString() + "'\n Thank you ";

             SmtpServer.Port = 587;
             SmtpServer.Credentials = new System.Net.NetworkCredential("clubproject2@gmail.com", "kaspon@123");
             SmtpServer.EnableSsl = true;

             SmtpServer.Send(mail);
             ModalPopupExtender3.Show();
             
         }
    }
   
}