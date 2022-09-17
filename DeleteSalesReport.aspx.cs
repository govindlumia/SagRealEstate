using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class DeleteSalesReport : System.Web.UI.Page
{
    clsAccount objAccount = new clsAccount();
    SqlDataReader objReader;
    maincode obj_main = new maincode();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }
        if (!IsPostBack)
        {
            GridView1.DataSource = obj_main.Sales_Delete(Request.QueryString["seno"].ToString());
            GridView1.DataBind();
        }
        Response.Redirect("~/Report/sales_report.aspx");
    }
}