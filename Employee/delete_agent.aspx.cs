using System;
using System.Collections.Generic;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net.NetworkInformation;

public partial class delete_agent : System.Web.UI.Page
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
            objReader = obj_main.Branch_select(1);
            Ddlbranchname.DataSource = objReader;
            Ddlbranchname.DataTextField = "Branch_Name";
            Ddlbranchname.DataValueField = "Branch_Name";
            Ddlbranchname.DataBind();
            Ddlbranchname.Items.Insert(0, "Select User ");
            Ddlbranchname.Items[0].Value = "0";
            Ddlbranchname.SelectedIndex = 0;
            objReader.Close();

            objReader = obj_main.agentdetails_dd_select(1);
            ddlagentname.DataSource = objReader;
            ddlagentname.DataTextField = "agent_name";
            ddlagentname.DataValueField = "agent_id";
            ddlagentname.DataBind();
            ddlagentname.Items.Insert(0, "Select Agent");
            ddlagentname.Items[0].Value = "0";
            ddlagentname.SelectedIndex = 0;
            objReader.Close();

           

        }
    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        obj_main.agent_id = ddlagentname.SelectedValue.ToString();
        obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();

        value = obj_main.Agent_deactive(obj_main);
        Response.Redirect("~/Employee/show_agent_details.aspx");

    }
    protected void reset_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Employee/show_agent_details.aspx");

    }
}