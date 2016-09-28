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
    public partial class viewgalary : System.Web.UI.Page
    {
       SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Convert.ToString(Session["name"]);
            Label8.Text = Convert.ToString(Session["name"]);
            string clubname = Session["name"].ToString();
            SqlDataAdapter add = new SqlDataAdapter("select * from Sample where ClubName='" + clubname + "'", conn);
            DataTable dt = new DataTable();
            add.Fill(dt);
           



        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string qry = "delete Sample where Id=" + e.CommandArgument;
                SqlCommand cmd = new SqlCommand(qry, conn);
                conn.Open();
                int a = cmd.ExecuteNonQuery();
                conn.Close();
                if (a > 0)
                {
                    Response.Write("<script>alert('Deleted successfully')</script>");
                }
            }
        }
    }
}