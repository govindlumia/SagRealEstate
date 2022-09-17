using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class show_project_details : System.Web.UI.Page
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
            objReader = obj_main.project_name_dd();
            ddlproject.DataSource = objReader;
            ddlproject.DataTextField = "project_name";
            ddlproject.DataValueField = "project_name";
            ddlproject.DataBind();
            ddlproject.Items.Insert(0, "Select All Projects");
            ddlproject.Items[0].Value = "0";
            ddlproject.SelectedIndex = 0;
            objReader.Close();

            obj_main.block = txtblock.Text;
            obj_main.plot_no = Txtplotno.Text;
            obj_main.project_name = ddlproject.SelectedValue.ToString();

            grdLead.DataSource = obj_main.plots_details_select(obj_main);
            grdLead.DataBind();
        }   


    }
  
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        obj_main.project_name = ddlproject.SelectedValue.ToString();
        obj_main.block = txtblock.Text;
        obj_main.plot_no = Txtplotno.Text;
        grdLead.DataSource = obj_main.plots_details_select(obj_main);
        grdLead.DataBind();
    }
    protected void grdLead_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        grdLead.PageIndex = e.NewPageIndex;
        obj_main.project_name = ddlproject.SelectedValue.ToString();
        obj_main.block = txtblock.Text;
        obj_main.plot_no = Txtplotno.Text;
        grdLead.DataSource = obj_main.plots_details_select(obj_main);
        grdLead.DataBind();
    }
}