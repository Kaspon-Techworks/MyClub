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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
            if (!Page.IsPostBack)
            {
                SqlDataAdapter ddlist = new SqlDataAdapter(" select * from TypesOfClubs", conn);
                DataTable dd = new DataTable();
                ddlist.Fill(dd);
                DropDownList1.DataSource = dd;
                DropDownList1.DataTextField = "ClubName";
                DropDownList1.DataValueField = "ClubId";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "Select Type of club");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
            string qry = "  insert into ClubRegister(clubName,adminName,adrs,city,stat,pin,phone,Email,typeofclub,stas,ClubTypeId) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList1.SelectedItem + "'," + 0 + ","+DropDownList1.SelectedValue+")";
            conn.Open();    
            SqlCommand cmd = new SqlCommand(qry, conn);
            int a = cmd.ExecuteNonQuery();
            conn.Close();
            if (a > 0) 
            {
                Label10.Text = "Register Successfully";
            }

        }
    }
}