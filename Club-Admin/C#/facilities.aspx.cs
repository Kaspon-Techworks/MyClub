using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Club
{
    public partial class facilities : System.Web.UI.Page
    {
         SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Label8.Text = Convert.ToString(Session["name"]);
                Label9.Text = Convert.ToString(Session["name"]);
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Session["name"].ToString();
            string qry = "insert into Facilities(Name,Capacity,No,TimeFrom,TimeTo,ClubName,Descripition) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + timepicker1.Text + "','" + TextBox5.Text + "','" + name + "','" + TextBox6.Text + "')";
            conn.Open();
            SqlCommand cmd = new SqlCommand(qry, conn);
            int a = cmd.ExecuteNonQuery();
            conn.Close();
            if (a > 0)
            {
                Label7.Text = "Success";
            }
        }
    }
}