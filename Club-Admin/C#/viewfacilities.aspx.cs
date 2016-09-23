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
    public partial class viewfacilities : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Label1.Text = Convert.ToString(Session["name"]);
                Label8.Text = Convert.ToString(Session["name"]);
                string name = Session["name"].ToString();
                SqlDataAdapter add = new SqlDataAdapter("select Name,Capacity,No,TimeFrom,TimeTo,Descripition from Facilities where ClubName='" + name + "'", conn);
                DataTable dt = new DataTable();
                add.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}