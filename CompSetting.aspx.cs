using System.Web;
using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Xml.Linq;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.IO;
using System.Drawing;

public partial class CompSetting : System.Web.UI.Page
{
    clsSales objsales = new clsSales();
    clsUser objuser = new clsUser();

    SqlDataReader objReader;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SlickTicket"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
       string fileName = string.Empty;

            string filePath = string.Empty;

            Byte[] bytes;

            FileStream fs;

            BinaryReader br;
          //  objsales.Flag = "U";

            SqlCommand cmd = new SqlCommand("comp_sett_details_update", con);
           // objsales.Flag = "U";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@comp_address", txtcorpaddress.Text);
            cmd.Parameters.AddWithValue("@CompName", txtcompanyname.Text);
            cmd.Parameters.AddWithValue("@city", txtcity.Text);
          // cmd.Parameters.AddWithValue("@s_no", "1");
           
                
            //cmd.Parameters.AddWithValue("@Price", Convert.ToDecimal(txtPrice.Text));
            try
            {

                if (filUpload.HasFile)
                {

                    fileName = filUpload.FileName;


                    filePath = HttpContext.Current.Server.MapPath("images/" + System.Guid.NewGuid() + fileName);
                    // Server.MapPath

                    filUpload.SaveAs(filePath);

                    fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);

                    br = new BinaryReader(fs);

                    bytes = br.ReadBytes(Convert.ToInt32(fs.Length));

                    br.Close();

                    fs.Close();

                    cmd.Parameters.AddWithValue("@Comp_photo", bytes);
                }

                con.Open();

                cmd.ExecuteNonQuery();

            }

            catch (Exception)
            {


            }
            finally
            {

                con.Close();

                cmd.Dispose();

                fileName = null;

                filePath = null;

                fs = null;

                br = null;
            }
            Response.Redirect("~/home.aspx");
        }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }
    protected void ImgCompany_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }

  
}
