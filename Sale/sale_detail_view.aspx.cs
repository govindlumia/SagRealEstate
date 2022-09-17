using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sale_sale_detail_view : System.Web.UI.Page
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
            ddlproject.Items.Insert(0, "Select All Project");
            ddlproject.Items[0].Value = "0";
            ddlproject.SelectedIndex = 0;
            objReader.Close();

            obj_main.search_value = txtsearch.Text.ToString();
            obj_main.project_name = ddlproject.SelectedValue.ToString();

            grdLead.DataSource = obj_main.sale_view_select(obj_main);
            grdLead.DataBind();
        }


    }
  
    protected void grdLead_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "print")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/invoice.aspx?serial_no=" + lblserialno.Text);

        }
        if (e.CommandName == "edit")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            // Label lblserialno = (Label)row.FindControl("lblserialno");

            Response.Redirect("sale_insert.aspx?serial_no=" + lblserialno.Text);

        }

    }
    protected void View_Click1(object sender, EventArgs e)
    {
        obj_main.project_name = ddlproject.SelectedValue.ToString();
        obj_main.search_value = txtsearch.Text.ToString();
        grdLead.DataSource = obj_main.sale_view_select(obj_main);
        grdLead.DataBind();
    }
    protected void grdLead_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdLead.PageIndex = e.NewPageIndex;
        obj_main.project_name = ddlproject.SelectedValue.ToString();
        obj_main.search_value = txtsearch.Text.ToString();
        grdLead.DataSource = obj_main.sale_view_select(obj_main);
        grdLead.DataBind();
    }
}