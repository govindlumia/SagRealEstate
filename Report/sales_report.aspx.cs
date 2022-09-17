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

public partial class sales_report : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    decimal Totalamount = 0, Totalamount1=0;
    decimal Totalamount2 = 0;
    decimal Totalamount3 = 0;
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

            //objReader = obj_main.Branch_select(1);
            //Ddlbranchname.DataSource = objReader;
            //Ddlbranchname.DataTextField = "Branch_Name";
            //Ddlbranchname.DataValueField = "Branch_Name";
            //Ddlbranchname.DataBind();
            //Ddlbranchname.Items.Insert(0, "Select Branch ");
            //Ddlbranchname.Items[0].Value = "0";
            //Ddlbranchname.SelectedIndex = 0;
            //objReader.Close();

            objReader = obj_main.project_name_dd();
            ddlselectproject.DataSource = objReader;
            ddlselectproject.DataTextField = "project_name";
            ddlselectproject.DataValueField = "project_name";
            ddlselectproject.DataBind();
            ddlselectproject.Items.Insert(0, "Select All Project");
            ddlselectproject.Items[0].Value = "0";
            ddlselectproject.SelectedIndex = 0;
            objReader.Close();

            obj_main.project_name = ddlselectproject.SelectedValue.ToString();
           // obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();


            obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_main.to_date = Convert.ToDateTime(txttodate.Text);
            grdLead.DataSource = obj_main.project_wise_sale_report(obj_main);
            grdLead.DataBind();
            
          //  sale_view_select create separate report for sp
        }

    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        obj_main.project_name = ddlselectproject.SelectedValue.ToString();
       // obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();


        obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
        obj_main.to_date = Convert.ToDateTime(txttodate.Text);
        grdLead.DataSource = obj_main.project_wise_sale_report(obj_main);
        grdLead.DataBind();

        
    }
    protected void grdLead_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Totalamount3 = Totalamount3 + Convert.ToDecimal(e.Row.Cells[7].Text);
            Totalamount = Totalamount + Convert.ToDecimal(e.Row.Cells[11].Text);
            Totalamount1 = Totalamount1 + Convert.ToDecimal(e.Row.Cells[12].Text);
            Totalamount2 = Totalamount2 + Convert.ToDecimal(e.Row.Cells[13].Text);
        }

        if (e.Row.RowType == DataControlRowType.Footer)
        {
          e.Row.Cells[0].Text = "Total";
           e.Row.Cells[7].Text = Convert.ToString(Totalamount3);
           e.Row.Cells[11].Text = Convert.ToString(Totalamount);
           e.Row.Cells[12].Text = Convert.ToString(Totalamount1);
           e.Row.Cells[13].Text = Convert.ToString(Totalamount2);
           
        }
    }


    protected void grdLead_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            // Label lblserialno = (Label)row.FindControl("lblserialno");

            Response.Redirect("~/Sale/sale_insert.aspx?serial_no=" + lblserialno.Text);

        }
        if (e.CommandName == "print")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/invoice.aspx?serial_no=" + lblserialno.Text);

        }
    }
    protected void grdLead_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grdLead_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)grdLead.Rows[e.RowIndex];
        //GridViewRow row = (GridViewRow)(((ImageButton)e.Keys).NamingContainer);
        Label lblserialno = (Label)row.FindControl("lblserialno");
        Response.Redirect("~/DeleteSalesReport.aspx?seno=" + lblserialno.Text);
    }
    protected void submit_Click(object sender, EventArgs e)
    {

    }
}