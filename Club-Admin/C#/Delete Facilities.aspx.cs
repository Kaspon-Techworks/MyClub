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
    public partial class Delete_Facilities : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                
                string name = Session["name"].ToString();
                if (!Page.IsPostBack)
                {
                    Label14.Text = Convert.ToString(Session["name"]);
                    Label15.Text = Convert.ToString(Session["name"]);
                    SqlDataAdapter add = new SqlDataAdapter("select id,Name from Facilities where ClubName ='" + name + "'", conn);
                    DataTable dt = new DataTable();
                    add.Fill(dt);
                    DropDownList1.DataSource = dt;
                    DropDownList1.DataTextField = "Name";
                    DropDownList1.DataValueField = "id";
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, "Select");
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string name = Session["name"].ToString();
             SqlDataAdapter add = new SqlDataAdapter("select * from Facilities where id = "+DropDownList1.SelectedValue, conn);
                DataTable dt = new DataTable();
                add.Fill(dt);
                Label2.Text     = Convert.ToString(dt.Rows[0]["Name"]);
                Label4.Text = Convert.ToString(dt.Rows[0]["Capacity"]);
                Label6.Text = Convert.ToString(dt.Rows[0]["No"]);
                Label8.Text = Convert.ToString(dt.Rows[0]["TimeFrom"]);
                Label10.Text = Convert.ToString(dt.Rows[0]["TimeTo"]);
                Label12.Text = Convert.ToString(dt.Rows[0]["Descripition"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string qry = "delete from Facilities where id=" + DropDownList1.SelectedValue;
            conn.Open();
            SqlCommand cmd = new SqlCommand(qry, conn);
            int a = cmd.ExecuteNonQuery();
            conn.Close();
            if (a > 0)
            {
                Label13.Text = "Deleted Successs";
            }
        }

        
    }
}