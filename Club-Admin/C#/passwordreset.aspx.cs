using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Club
{
    public partial class passwordreset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Label2.Text = Convert.ToString(Session["name"]);
                Label8.Text = Convert.ToString(Session["name"]);
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Convert.ToString(Session["name"]);
           SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
           SqlDataAdapter add = new SqlDataAdapter("select * from ClubLogin where ClubTypeName='" + name + "'", conn);
            DataTable dd = new DataTable();
            add.Fill(dd);
            string pass = dd.Rows[0]["pass"].ToString();
            if (TextBox1.Text == pass)
            {
                if (TextBox2.Text == TextBox3.Text)
                {
                    string qry = "update ClubLogin set pass = '" + TextBox2.Text + "' where ClubTypeName='" + name + "'"; 
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(qry, conn);
                    int a = cmd.ExecuteNonQuery();
                    conn.Close();
                    if (a > 0)
                    {
                        Label1.Text = "Reset Successfully";
                    }
                    else {
                        Label1.Text = "Failed";
                    }
                }
            }
            else
            {
                Label1.Text = "incorrect password";
            }
        }
    }
}