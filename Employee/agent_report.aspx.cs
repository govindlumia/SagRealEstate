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

public partial class agent_report : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }

        if (!IsPostBack)
        {
            txtfromdate.Text = DateTime.Today.ToShortDateString();
            txttodate.Text = DateTime.Today.ToShortDateString();

            objReader = obj_main.Branch_select(1);
            Ddlbranchname.DataSource = objReader;
            Ddlbranchname.DataTextField = "Branch_Name";
            Ddlbranchname.DataValueField = "Branch_Name";
            Ddlbranchname.DataBind();
            Ddlbranchname.Items.Insert(0, "Select Branch ");
            Ddlbranchname.Items[0].Value = "0";
            Ddlbranchname.SelectedIndex = 0;
            objReader.Close();

            objReader = obj_main.agentdetails_dd_select(1);
            ddlagent.DataSource = objReader;
            ddlagent.DataTextField = "agent_name";
            ddlagent.DataValueField = "agent_name";
            ddlagent.DataBind();
            ddlagent.Items.Insert(0, "Select Project");
            ddlagent.Items[0].Value = "0";
            ddlagent.SelectedIndex = 0;
            objReader.Close();

            //objReader = obj_main.project_name_dd();
            //ddlselectproject.DataSource = objReader;
            //ddlselectproject.DataTextField = "project_name";
            //ddlselectproject.DataValueField = "project_name";
            //ddlselectproject.DataBind();
            //ddlselectproject.Items.Insert(0, "Select Project");
            //ddlselectproject.Items[0].Value = "0";
            //ddlselectproject.SelectedIndex = 0;
            //objReader.Close();

            obj_main.agent_name = ddlagent.SelectedValue.ToString();
            obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();

           // obj_main.project_name = ddlselectproject.SelectedValue.ToString();
            obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_main.to_date = Convert.ToDateTime(txttodate.Text);

            grdLead.DataSource = obj_main.agent_details_select(obj_main);
            grdLead.DataBind();

        }
       

    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        obj_main.agent_name = ddlagent.SelectedValue.ToString();
        obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();
      //  obj_main.project_name = ddlselectproject.SelectedValue.ToString();

        obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
        obj_main.to_date = Convert.ToDateTime(txttodate.Text);

        grdLead.DataSource = obj_main.agent_details_select(obj_main);
        grdLead.DataBind();


    }

    
}