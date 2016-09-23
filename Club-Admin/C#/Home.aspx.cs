using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Club
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Label2.Text = Convert.ToString(Session["name"]);
                Label8.Text = Convert.ToString(Session["name"]);
                SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
                int id = Convert.ToInt32(Session["id"]);
            string type = null;
           
            if (id == 1)
            {
                type = "AluminiClub";
               
            }
            else if (id == 2)
            {
                type = "LaughterClub";
               
            }
            else if (id == 3)
            {
                type = "SportdClub";
              
            }
            else if (id == 4)
            {
                type = "HealthClub";
               
            }
            else if (id == 5)
            {
                type = "Entreprenurs";
                
            }
            else if (id == 6)
            {
                type = "MusicClub";
            }
           
               
                SqlDataAdapter add = new SqlDataAdapter("select count(*) as count from " + type + " where stus = 0 ", conn);
                DataTable dd = new DataTable();
                add.Fill(dd);
                int a = Convert.ToInt32(dd.Rows[0]["count"]);
                Label3.Text = a.ToString();
               
                


                SqlDataAdapter add2 = new SqlDataAdapter("select count(*) as count from EventRequest where ClubName='" + Session["name"] + "' and stus=0", conn);
                DataTable dd2 = new DataTable();
                add2.Fill(dd2);
                int b = Convert.ToInt32(dd2.Rows[0]["count"]);
                Label1.Text = b.ToString();

                SqlDataAdapter add3 = new SqlDataAdapter("select count(*) as count from Facilities where ClubName='" + Session["name"] + "'", conn);
                DataTable ddf = new DataTable();
                add3.Fill(ddf);
                b = Convert.ToInt32(ddf.Rows[0]["count"]);
                Label4.Text=b.ToString();

                SqlDataAdapter add4 = new SqlDataAdapter("select count(*) as count from " + type + " where stus = 1 and ClubName='" + Session["name"] + "'", conn);
                DataTable dd4 = new DataTable();
                add4.Fill(dd4);
                a = Convert.ToInt32(dd4.Rows[0]["count"]);
                Label5.Text = a.ToString();

             SqlDataAdapter add5 = new SqlDataAdapter("select EventName,EventTime from EventRequest where ClubName='" + Session["name"] + "' and EventDate='" + DateTime.Now.Date.ToString("yyyy-MM-dd")+"'", conn);
             DataTable dd5 = new DataTable();
                add5.Fill(dd5);
                GridView1.DataSource = dd5;
                GridView1.DataBind();
                if (dd5.Rows.Count == 0)
                {
                    Label7.Text = "Today There Is no Event";
                }

            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
            SqlDataAdapter add = new SqlDataAdapter("select * from EventRequest where ClubName='" + Session["name"] + "'", conn);
            DataTable dt = new DataTable();
         
            add.Fill(dt);
            {
                e.Cell.ToolTip = "Today";
                e.Cell.ForeColor = System.Drawing.Color.Brown;
               

            }
          
            e.Cell.BackColor = System.Drawing.Color.White;
            if (!e.Day.IsToday)
            {
                e.Cell.ForeColor = System.Drawing.Color.Black;
            }
            if (e.Day.IsOtherMonth)
            {

                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Gray;
            }

            DataRow[] rows = dt.Select(
                 String.Format(
                    "EventDate >= #{0}# AND EventDate < #{1}#",
                    e.Day.Date.ToShortDateString(),
                    e.Day.Date.AddDays(1).ToShortDateString()
                 )
              );
             foreach (DataRow row in rows)
            {


                e.Cell.BackColor = System.Drawing.Color.FromArgb(12, 144, 138);
                e.Cell.ForeColor = System.Drawing.Color.White;
                e.Cell.ToolTip = row["EventName"].ToString();
                e.Cell.Style.Add("border-radius", "75px");
            }
        }
        }
    }
