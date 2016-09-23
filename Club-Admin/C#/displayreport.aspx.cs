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
    public partial class displayreport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Label1.Text = Convert.ToString(Session["name"]);
                Label8.Text = Convert.ToString(Session["name"]);
               SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
               SqlDataAdapter add = new SqlDataAdapter("select * from " + Session["clubtype"] + " where stus = 1 and ClubName='" + Session["name"] + "'", conn);
                DataTable dd = new DataTable();
                add.Fill(dd);
                GridView1.DataSource = dd;
                GridView1.DataBind();
                if (dd.Rows.Count == 0)
                {
                    Response.Write("<script>alert('There is no Members')</script>");
                }
                    
                
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }
    }
}