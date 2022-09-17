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
public partial class Sale_show_token_details : System.Web.UI.Page
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


            obj_main.search_value = txtsearch.Text;
            GridView1.DataSource = obj_main.token_details_SELECT(obj_main);
            GridView1.DataBind();
        }


    }
    protected void View_Click(object sender, EventArgs e)
    {

        obj_main.search_value = txtsearch.Text;
        GridView1.DataSource = obj_main.token_details_SELECT(obj_main);
        GridView1.DataBind();
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "print")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/Token_Invoice.aspx?serial_no=" + lblserialno.Text);

        }

        if (e.CommandName == "edit")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/Sale/token_Form.aspx?s_no=" + lblserialno.Text);

        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        //GridViewRow row = (GridViewRow)(((ImageButton)e.Keys).NamingContainer);
        Label lblserialno = (Label)row.FindControl("lblserialno");
        Response.Redirect("~/Sale/inactive_agent.aspx?seno=" + lblserialno.Text);
    }
}