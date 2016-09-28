using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Club
{
    public partial class galary : System.Web.UI.Page
    {
       SqlConnection  conn = new SqlConnection("Data Source=USER-PC;Initial Catalog=club;User Id=sa;Password=vetri123");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Convert.ToString(Session["name"]);
            Label8.Text = Convert.ToString(Session["name"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

             HttpFileCollection imageCollection = Request.Files;

             for (int i = 0; i < imageCollection.Count; i++)
             {
                 HttpPostedFile filepath = imageCollection[i];
                 //string filepath = FileUpload1.PostedFile.FileName;
                 string filename = Path.GetFileName(filepath.FileName);
                 string ext = Path.GetExtension(filepath.FileName);

                 string contenttype = string.Empty;

                 switch (ext)
                 {

                     case ".jpg":
                         contenttype = "image/jpg";
                         break;
                     case ".png":
                         contenttype = "image/png";
                         break;
                     case ".gif":
                         contenttype = "image/gif";
                         break;

                 }
                 if (contenttype != String.Empty)
                 {
                     // To convert image as bytes 

                     Stream fs = imageCollection[i].InputStream;
                     BinaryReader br = new BinaryReader(fs);
                     Byte[] bytes = br.ReadBytes((Int32)fs.Length);

                     var clubname = Session["name"];
                     //string qry = "  insert into Sample values(" + data + "," + clubname + ")";
                     //conn.Open();
                     //SqlCommand cmd = new SqlCommand(qry, conn);
                     //int a = cmd.ExecuteNonQuery();
                     //conn.Close();

                     string st = "insert into Sample(Data,ClubName,Date) values(@data,'" + clubname + "','" + DateTime.Now.ToString("M/d/yyyy") + "')";
                     SqlCommand cd = new SqlCommand(st);
                     cd.Parameters.Add("@data", SqlDbType.Binary).Value = bytes;
                     InsertUpdateData(cd);
                 }
             }

        }
        private Boolean InsertUpdateData(SqlCommand cmd)
        {


            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
                return false;
            }
            finally
            {
                conn.Close();

            }
        }
    }

}