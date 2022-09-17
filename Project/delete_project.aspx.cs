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

public partial class Project_delete_project : System.Web.UI.Page
{
    clsSales objsales = new clsSales();
    clsUser objuser = new clsUser();
    maincode obj_main = new maincode();
    string value;

    SqlDataReader objReader, objReader1, objReader2;
    string password, empcode, ip_address, data;
    protected void Page_Load(object sender, EventArgs e)
    { if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }

    if (!IsPostBack)
    {
        objReader = obj_main.project_name_dd();
        ddlselectproject.DataSource = objReader;
        ddlselectproject.DataTextField = "project_name";
        ddlselectproject.DataValueField = "project_id";
        ddlselectproject.DataBind();
        ddlselectproject.Items.Insert(0, "Select All Projects");
        ddlselectproject.Items[0].Value = "0";
        ddlselectproject.SelectedIndex = 0;
        objReader.Close();

    }

    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
      
        objReader = obj_main.new_projects_delete_select(ddlselectproject.SelectedValue.ToString());
         if (objReader.Read())
         {
             lblMsg.Visible = true;
             pnlrepairinvoice.Visible = true;
             Session["project_id"] = objReader["project_id"].ToString();
             Session["project_name"] = objReader["project_name"].ToString();
             Session["project_location"] = objReader["project_location"].ToString();
             Session["Company"] = objReader["Company"].ToString();

             lblbicomp.Text = Session["Company"].ToString();
             lblcomplocation.Text = Session["project_location"].ToString();
             lblpjoject.Text = Session["project_name"].ToString();
             obj_main.project_id = ddlselectproject.SelectedValue.ToString();
             lblMsg.Text = "Are You Sure to Delete Project " + "<br />" + "If Yes... then  Press Yes.";

             ddlselectproject.Enabled = false;
         }


        //ddl_software.SelectedValue = objReader["software_engg"].ToString();
       // objRepair.jobwork_status = ddlJobwork.SelectedValue.ToString();

    }
     protected void btndeleteproject_Click(object sender, EventArgs e)
    {
        obj_main.project_id = Session["project_id"].ToString();

        lblbicomp.Text = Session["Company"].ToString();
        lblcomplocation.Text = Session["project_location"].ToString();
        lblpjoject.Text = Session["project_name"].ToString();
      
        value = obj_main.Project_deactive(obj_main);
        lblMsg.Visible = false;
        pnlrepairinvoice.Visible = false;
      //  lblsms.Visible = true;
        ddlselectproject.Enabled = true;
     //   lblsms.Text = "You Have Successfully Deleted A Project";
      //  Response.Redirect("~/Project/delete_project.aspx");
        Response.Redirect("~/Project/view_project.aspx");

    }
    protected void btncanceldelete_Click(object sender, EventArgs e)
     {
         lblMsg.Visible = false;
       //  lblsms.Visible = false;
         pnlrepairinvoice.Visible = false;
         Response.Redirect("~/Project/delete_project.aspx");
       

    }
    protected void chkdeleteall_CheckedChanged(object sender, EventArgs e)
    {
      
            lblmsgall.Visible = true;
            paneldeleteall.Visible = true;
            lblmsgall.Text = "Are You Sure to Delete All Project " + "<br />" + "If Yes... then Press Yes.";
            ddlselectproject.Enabled = false;
            submit.Enabled = false;
            pnlrepairinvoice.Visible = false;
    }
  
    protected void btncancelall_Click(object sender, EventArgs e)
    {
        lblmsgall.Visible = false;
        paneldeleteall.Visible = false;
        pnlrepairinvoice.Visible = false;
        Response.Redirect("~/Project/delete_project.aspx");
       
    }
    protected void btndeleteall_Click(object sender, EventArgs e)
    {
        lblmsgall.Visible = false;
        paneldeleteall.Visible = false;
        pnlrepairinvoice.Visible = false;
        value = obj_main.Project_deactive_all(obj_main);
        Response.Redirect("~/Project/view_project.aspx");
    }
    protected void ddlselectproject_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlselectproject.SelectedValue.ToString() == "0")
        {
            chkdeleteall.Enabled = true;

        }

        else
        {
            chkdeleteall.Enabled = false;
        
        }

    }
}