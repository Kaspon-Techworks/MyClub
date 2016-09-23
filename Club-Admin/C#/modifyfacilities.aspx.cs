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
    public partial class modifyfacilities : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Convert.ToString(Session["name"]);
            Label8.Text = Convert.ToString(Session["name"]);
               if (Session["name"] != null)
            {

              if (!Page.IsPostBack)
              {
                  string name = Session["name"].ToString();
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
            else {
                Response.Redirect("login.aspx");
            }



        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
                Label2.Text = Convert.ToString(Session["name"]);
                string name = Session["name"].ToString();
                SqlDataAdapter add = new SqlDataAdapter("select * from Facilities where id=" + DropDownList1.SelectedValue, conn);
                DataTable dt = new DataTable();
                add.Fill(dt);
                TextBox1.Text = Convert.ToString(dt.Rows[0]["Name"]);
                TextBox2.Text = Convert.ToString(dt.Rows[0]["Capacity"]);
                TextBox3.Text = Convert.ToString(dt.Rows[0]["No"]);
                TextBox4.Text = Convert.ToString(dt.Rows[0]["TimeFrom"]);
                TextBox5.Text = Convert.ToString(dt.Rows[0]["TimeTo"]);
                TextBox6.Text = Convert.ToString(dt.Rows[0]["Descripition"]);

            
            
               


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string qry = "update Facilities set Name='" + TextBox1.Text + "',Capacity='" + TextBox2.Text + "',No='" + TextBox3.Text + "',TimeFrom='" + TextBox4.Text + "',TimeTo='" + TextBox5.Text + "',Descripition='" + TextBox6.Text + "' where id=" + DropDownList1.SelectedValue;
            SqlCommand cmd = new SqlCommand(qry, conn);
            conn.Open();
            int a = cmd.ExecuteNonQuery();
            conn.Close();
            if (a > 0)
            {
                Label1.Text = "success";
            }
        }
    }
}