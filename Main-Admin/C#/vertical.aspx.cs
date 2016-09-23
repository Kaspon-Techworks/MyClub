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
    public partial class vertical : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn;
            conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123;");
            SqlDataAdapter adapter =
               new SqlDataAdapter("select count(*) from ClubRegister where stas=0", conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            Label3.Text = dt.Rows[0][0].ToString();
            Label1.Text = dt.Rows[0][0].ToString();
            SqlDataAdapter adapter1 =
               new SqlDataAdapter("select count(*) from ClubRegister where stas=1", conn);
            DataTable dt1 = new DataTable();
            adapter1.Fill(dt1);
            Label5.Text = dt1.Rows[0][0].ToString();
            Label2.Text = dt1.Rows[0][0].ToString();
        }
        public void signout()
        {
            Session["username1"] = string.Empty;
        }

        protected void alumni1_Click(object sender, EventArgs e)
        {
            Session["member"]="ALumini Club";
            Response.Redirect("newrequest.aspx");
        }

        protected void laughter1_Click(object sender, EventArgs e)
        {
            Session["member"] = "Laughter Club";
            Response.Redirect("newrequest.aspx");
        }

        protected void sports1_Click(object sender, EventArgs e)
        {
            Session["member"] = "Sports Club";
            Response.Redirect("newrequest.aspx");
        }

        protected void health1_Click(object sender, EventArgs e)
        {
            Session["member"] = "Health Club";
            Response.Redirect("newrequest.aspx");
        }

        protected void entreprenur1_Click(object sender, EventArgs e)
        {
            Session["member"] = "Entreprenur Club";
            Response.Redirect("newrequest.aspx");
        }

        protected void music1_Click(object sender, EventArgs e)
        {
            Session["member"] = "Music Club";
            Response.Redirect("newrequest.aspx");
        }

        //protected void alumni_Click(object sender, EventArgs e)
        //{
        //    Session["request"] = "ALumini Club";
        //    //Response.Redirect("newcustomer.aspx");
        //}

        protected void laughter_Click(object sender, EventArgs e)
        {
            Session["request"] = "Laughter Club";
            Response.Redirect("newcustomer.aspx");
        }

        protected void sports_Click(object sender, EventArgs e)
        {
            Session["request"] = "Sports Club";
            Response.Redirect("newcustomer.aspx");
        }

        protected void health_Click(object sender, EventArgs e)
        {
            Session["request"] = "Health Club";
            Response.Redirect("newcustomer.aspx");
        }

        protected void entreprenur_Click(object sender, EventArgs e)
        {
            Session["request"] = "Entreprenur Club";
            Response.Redirect("newcustomer.aspx");
        }

        protected void music_Click(object sender, EventArgs e)
        {
            Session["request"] = "Music Club";
            Response.Redirect("newcustomer.aspx");
        }

        protected void alumni_Click(object sender, EventArgs e)
        {
            Session["request"] = "ALumini Club";
            Response.Redirect("newcustomer.aspx");
        }

        
        
    }
}