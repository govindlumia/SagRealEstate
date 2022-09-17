using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Plot_plot_status : System.Web.UI.Page
{
    clsSales objsales = new clsSales();
    clsUser objuser = new clsUser();
    maincode obj_main = new maincode();
    clsAccount objAccount = new clsAccount();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }
        if (!IsPostBack)
        {
            objReader = obj_main.project_name_dd();
            ddlproject.DataSource = objReader;
            ddlproject.DataTextField = "project_name";
            ddlproject.DataValueField = "project_name";
            ddlproject.DataBind();
            ddlproject.Items.Insert(0, "Select Projects");
            ddlproject.Items[0].Value = "0";
            ddlproject.SelectedIndex = 0;
            objReader.Close();


            obj_main.project_name = ddlproject.SelectedValue.ToString();
            obj_main.created_by = Session["user_id"].ToString();
        }
    }

    
    protected void submit_Click(object sender, EventArgs e)
    {
        
        obj_main.project_name = ddlproject.SelectedValue.ToString();
        obj_main.created_by = Session["user_id"].ToString();

        GridView1.DataSource = obj_main.PLOT_STATUS_Report(ddlproject.SelectedValue.ToString(), "TP");
        GridView1.DataBind();

        GridView2.DataSource = obj_main.PLOT_STATUS_Report(ddlproject.SelectedValue.ToString(), "PA");
        GridView2.DataBind();

        GridView3.DataSource = obj_main.PLOT_STATUS_Report(ddlproject.SelectedValue.ToString(), "HOLD");
        GridView3.DataBind();

        GridView4.DataSource = obj_main.PLOT_STATUS_Report(ddlproject.SelectedValue.ToString(), "BKD");
        GridView4.DataBind();

        GridView5.DataSource = obj_main.PLOT_STATUS_Report(ddlproject.SelectedValue.ToString(), "AGR");
        GridView5.DataBind();

        GridView6.DataSource = obj_main.PLOT_STATUS_Report(ddlproject.SelectedValue.ToString(), "REGIS");
        GridView6.DataBind();
    
    }
}