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
    public partial class EditHome : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label2.Text = Session["name"].ToString();
                Label8.Text = Session["name"].ToString();
                SqlDataAdapter add = new SqlDataAdapter("select Descripition from descripition where ClubName='" + Session["name"] + "'", conn);
                DataTable dt = new DataTable();
                add.Fill(dt);
                TextBox1.Text = Convert.ToString(dt.Rows[0]["Descripition"]);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string qry = "update descripition set Descripition='" + TextBox1.Text + "' where ClubName='" + Session["name"] + "'";
                SqlCommand cmd = new SqlCommand(qry, conn);
                conn.Open();
                int a = cmd.ExecuteNonQuery();
                conn.Close();
                if (a > 0)
                {
                    Label1.Text = "Success";
                }
                else
                {
                    Label1.Text = "Failed";
                }
            }
            catch (SqlException sqlEx)
            {
                if (sqlEx.Message.StartsWith("String or binary data would be truncated."))
                {
                    Response.Write("<script>alert('Please enter 1000 character')</script>");
                }
                else
                    throw;
            }
        }
    }
}