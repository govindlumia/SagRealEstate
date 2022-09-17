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
using System.Configuration;
using System.Net.Mail;
using System.Data;

public partial class visitor_entry : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    string value;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }

        if (!IsPostBack)
        {


            objReader = obj_main.agentdetails_dd_select(1);
            ddlagentname.DataSource = objReader;
            ddlagentname.DataTextField = "agent_name";
            ddlagentname.DataValueField = "agent_name";
            ddlagentname.DataBind();
            ddlagentname.Items.Insert(0, "Select Agent");
            ddlagentname.Items[0].Value = "0";
            ddlagentname.SelectedIndex = 0;
            objReader.Close();

            objReader = obj_main.Branch_select(1);
            Ddlbranchname.DataSource = objReader;
            Ddlbranchname.DataTextField = "Branch_Name";
            Ddlbranchname.DataValueField = "Branch_Name";
            Ddlbranchname.DataBind();
            Ddlbranchname.Items.Insert(0, "Select Branch ");
            Ddlbranchname.Items[0].Value = "0";
            Ddlbranchname.SelectedIndex = 0;
            objReader.Close();
 
            txtfromdate.Text = DateTime.Today.ToShortDateString();

        }
    }
   
    protected void submit_Click1(object sender, ImageClickEventArgs e)
    {
        obj_main.mobile_no = Txtclientmobile.Text;
        obj_main.Customer_name = Txtclientname.Text;

        obj_main.due_date = Convert.ToDateTime(txtfromdate.Text);

        obj_main.address = Txtcliaddress.Text;

        obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();
        obj_main.agent_name = ddlagentname.SelectedValue.ToString();
        obj_main.created_by = Session["user_id"].ToString();


        value = obj_main.visitor_detail_insert(obj_main);

        Response.Redirect("~/Day_Report/visitor_report.aspx");

    }
}