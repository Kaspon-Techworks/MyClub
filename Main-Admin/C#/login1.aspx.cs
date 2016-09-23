using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace club_final
{
    public partial class login1 : System.Web.UI.Page
    {
        public string Username
        {
            get
            {
                return TextBox1.Text;
            }
        }

        public string Password
        {
            get
            {
                return TextBox2.Text;
            }
        }
        public bool Valid;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username1"] = Username;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Username == string.Empty)
            {
                Label1.Text = "Enter Username";
                Label1.Visible = true;
            }
            else if (Password == string.Empty)
            {
                Label1.Text = "Enter Password";
                Label1.Visible = true;
            }
            else if(Username == string.Empty && Password == string.Empty)
            {
                Label1.Text = "Enter Valid Credentials";
                Label1.Visible = true;
            }
            else
            {
                SqlConnection conn;
                conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123;");
                SqlDataAdapter adapter =
                   new SqlDataAdapter("select * from AdmiLogin where uname='" + Username + "' and pass='" + Password + "'", conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Valid = true;
                    FormsAuthentication.RedirectFromLoginPage(Username, true);
                    Response.Redirect("vertical.aspx");
                }

                else
                {
                    Label1.Text = "Enter Valid Credentials";
                    Label1.Visible = true;
                }
            }
        }
    }
}