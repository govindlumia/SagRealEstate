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


public partial class show_agent : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }

        //objReader = obj_main.branch_dd_select("0");
        //ddlbranch.DataSource = objReader;
        //ddlbranch.DataTextField = "branch_name";
        //ddlbranch.DataValueField = "branch_name";
        //ddlbranch.DataBind();
        //ddlbranch.Items.Insert(0, "Select Project");
        //ddlbranch.Items[0].Value = "0";
        //ddlbranch.SelectedIndex = 0;
        //objReader.Close();
        if (!IsPostBack)
        {

            objReader = obj_main.Branch_select(1);
            ddlbranch.DataSource = objReader;
            ddlbranch.DataTextField = "Branch_Name";
            ddlbranch.DataValueField = "Branch_Name";
            ddlbranch.DataBind();
            ddlbranch.Items.Insert(0, "Select Branch ");
            ddlbranch.Items[0].Value = "0";
            ddlbranch.SelectedIndex = 0;
            objReader.Close();

            obj_main.Branch_Name = ddlbranch.SelectedValue.ToString();

            GridView1.DataSource = obj_main.agent_details_select(obj_main);
            GridView1.DataBind();
        }

    }
    protected void View_Click(object sender, EventArgs e)
    {

        //objReader = obj_main.branch_dd_select(ddlbranch.SelectedValue.ToString());


        obj_main.Branch_Name = ddlbranch.SelectedValue.ToString();

         GridView1.DataSource = obj_main.agent_details_select(obj_main);
        GridView1.DataBind();
    }
   
}