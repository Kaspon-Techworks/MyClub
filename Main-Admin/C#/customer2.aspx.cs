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
    public partial class customer2 : System.Web.UI.Page
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
        }
    }
   
}