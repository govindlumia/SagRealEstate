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

public partial class daily_calling_report_entry : System.Web.UI.Page
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

            txtreminddate.Text = DateTime.Today.ToShortDateString();

            objReader = obj_main.agentdetails_dd_select(1);
            ddlagent.DataSource = objReader;
            ddlagent.DataTextField = "agent_name";
            ddlagent.DataValueField = "agent_name";
            ddlagent.DataBind();
            ddlagent.Items.Insert(0, "Select Employee");
            ddlagent.Items[0].Value = "0";
            ddlagent.SelectedIndex = 0;
            objReader.Close();

            objReader = obj_main.Branch_select(1);
            DropDownList1.DataSource = objReader;
            DropDownList1.DataTextField = "Branch_Name";
            DropDownList1.DataValueField = "Branch_Name";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Select Branch ");
            DropDownList1.Items[0].Value = "0";
            DropDownList1.SelectedIndex = 0;
            objReader.Close();
        }
    }
    protected void submit_Click1(object sender, ImageClickEventArgs e)
    {
        obj_main.created_by = Session["user_id"].ToString();
        obj_main.Branch_Name = DropDownList1.SelectedValue.ToString();
        obj_main.agent_name = ddlagent.SelectedValue.ToString();
        obj_main.Customer_name = Txtclientname.Text;
        obj_main.mobile_no = Txtclientmobile.Text;
        obj_main.Feedback = Txtclifeedback.Text;
        obj_main.nxt_remind_date = Convert.ToDateTime(txtreminddate.Text);
        obj_main.dcr_detail_insert(obj_main);

        Response.Redirect("~/Day_Report/day_calling_report.aspx");
        
    }
}