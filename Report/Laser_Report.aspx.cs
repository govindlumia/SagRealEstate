using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Report_Laser_Report : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }
    }
  
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
       
        Pnlpros.Visible = true;
        pnlquli.Visible = true;


                obj_main.search_value = txtsearch.Text.ToString();
               // Session["search_value"] = Request.QueryString["search_value"].ToString();
                grdrequestid.DataSource = obj_main.search_report_select(txtsearch.Text.ToString(), "Sale");
                grdrequestid.DataBind();

                grdcustomer.DataSource = obj_main.search_report_select(txtsearch.Text.ToString(), "EMI");
                grdcustomer.DataBind();

                

            }
    
}

