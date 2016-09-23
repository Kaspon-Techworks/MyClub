using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace club_final
{
    public partial class viewdetails1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=User-PC;Initial Catalog=club;User Id=sa;Password=vetri123;");
            
        protected void Page_Load(object sender, EventArgs e)
        {
            string qry = "select * from ClubRegister where clubName='" + Session["clubname"] + "' ";
            //SqlCommand cmd = new SqlCommand(qry, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(qry, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            TextBox1.Text = dt.Rows[0][0].ToString();
            TextBox2.Text = dt.Rows[0][1].ToString();
            TextBox3.Text = dt.Rows[0][2].ToString();
            TextBox4.Text = dt.Rows[0][3].ToString();
            TextBox5.Text = dt.Rows[0][4].ToString();
            TextBox6.Text = dt.Rows[0][5].ToString();
            TextBox7.Text = dt.Rows[0][6].ToString();
            TextBox8.Text = dt.Rows[0][7].ToString();
            TextBox9.Text = dt.Rows[0][8].ToString();
            TextBox10.Text = dt.Rows[0][9].ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string qry = "select stas from ClubRegister where clubName='" + Session["clubname"] + "' ";            
            SqlDataAdapter adapter = new SqlDataAdapter(qry, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            if (Convert.ToInt32(dt.Rows[0][0]) == 0)
            {
                Response.Redirect("newcustomer.aspx");
            }
            else
            {
                Response.Redirect("newrequest.aspx");
            }
           
        }
    }
}