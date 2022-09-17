using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Plot_delete_plot_deatils : System.Web.UI.Page
{
    clsSales objsales = new clsSales();
    clsUser objuser = new clsUser();
    maincode obj_main = new maincode();
    string value;

    SqlDataReader objReader, objReader1, objReader2;
    string password, empcode, ip_address, data;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }

        if (!IsPostBack)
        {
            objReader = obj_main.project_name_dd();
            ddlselectproject.DataSource = objReader;
            ddlselectproject.DataTextField = "project_name";
            ddlselectproject.DataValueField = "project_name";
            ddlselectproject.DataBind();
            ddlselectproject.Items.Insert(0, "Select Project");
            ddlselectproject.Items[0].Value = "0";
            ddlselectproject.SelectedIndex = 0;
            objReader.Close();

        }

    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
         //objReader = obj_main.plots_sale_Duplicacycheck(ddlselectproject.SelectedValue.ToString(), txtblock.Text, Txtplotno.Text);
         //if (objReader.Read())
         //{
            // lblMsg.Visible = false;
             obj_main.plot_no = Txtplotno.Text;
             obj_main.block = txtblock.Text;
             obj_main.project_name = ddlselectproject.SelectedValue.ToString();
             value = obj_main.Plot_delete(obj_main);
             Response.Redirect("~/Plot/show_project_details.aspx");

            
         //}
         //else
         //{
         //    lblMsg.Visible = true;
         //    lblMsg.Text = "Please Check the Entered Value";
         //    return;
         //}

    }
}