using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class view_emi_detail : System.Web.UI.Page
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
            ddlproject.Items.Insert(0, "Select Project");
            ddlproject.Items[0].Value = "0";
            ddlproject.SelectedIndex = 0;
            objReader.Close();

            obj_main.project_name = ddlproject.SelectedValue.ToString();

            grdLead.DataSource = obj_main.Emi_view_select(obj_main);
            grdLead.DataBind();
        }
    }
    protected void View_Click(object sender, EventArgs e)
    {
        obj_main.project_name = ddlproject.SelectedValue.ToString();

            grdLead.DataSource = obj_main.Emi_view_select(obj_main);
            grdLead.DataBind();

    }
    protected void grdLead_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Print")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/emiinvoices.aspx?serial_no=" + lblserialno.Text);

        }
        if (e.CommandName == "edit")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            // Label lblserialno = (Label)row.FindControl("lblserialno");

            Response.Redirect("emi_entry.aspx?serial_no=" + lblserialno.Text);

        }
    }
}