using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace club_final
{
    public partial class sample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=KPDT4-PC;Initial Catalog=club;User Id=sa;Password=Kaspon123;");
            SqlCommand cmd = new SqlCommand("insert into AdmiLogin values('" + TextBox1.Text + "','" + TextBox2.Text + "')", conn);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
    }
}