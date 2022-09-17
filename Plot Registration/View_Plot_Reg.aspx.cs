using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Plot_Registration_View_Plot_Reg : System.Web.UI.Page
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


            obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_main.to_date = Convert.ToDateTime(txttodate.Text);
            grdLead.DataSource = obj_main.PlotReg_Select(obj_main);
            grdLead.DataBind();
        }
        
        
    }
    protected void grdLead_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "print")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/Plot_Reg_Insert.aspx?serial_no=" + lblserialno.Text);

        }
        if (e.CommandName == "edit")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            // Label lblserialno = (Label)row.FindControl("lblserialno");

            Response.Redirect("Plot_Reg_Insert.aspx?serial_no=" + lblserialno.Text);

        }

    }
    protected void View_Click(object sender, EventArgs e)
    {
        
            obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_main.to_date = Convert.ToDateTime(txttodate.Text);

            grdLead.DataSource = obj_main.PlotReg_Select(obj_main);
            grdLead.DataBind();
       
       if (DD_All.SelectedIndex > 0)
        {
            grdLead.DataSource = obj_main.ALL_PlotReg_Select(obj_main);
            grdLead.DataBind();
        }
    }
}