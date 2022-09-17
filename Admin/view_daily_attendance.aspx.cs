using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class view_daily_attendance : System.Web.UI.Page
{
    clsSales objsales = new clsSales();
    clsUser objuser = new clsUser();
   // clsSupport objsupport = new clsSupport();
    clsAccount objAccount = new clsAccount();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }

        if (!IsPostBack)
        {
            txtfromdate.Text = DateTime.Today.ToShortDateString();

            objuser.from_date = Convert.ToDateTime(txtfromdate.Text);
            objuser.created_by = Session["user_id"].ToString();
            // objsales.created_by = Request.QueryString["created_by"].ToString();
            grdvassigntech.DataSource = objuser.Daily_Attendance_Report(Convert.ToDateTime(txtfromdate.Text));
            grdvassigntech.DataBind();
        }

    }
    protected void View_show_Click(object sender, EventArgs e)
    {
        if (DateTime.Now > Convert.ToDateTime(txtfromdate.Text))
        {

            objuser.from_date = Convert.ToDateTime(txtfromdate.Text);
            objuser.created_by = Session["user_id"].ToString();
            grdvassigntech.DataSource = objuser.Daily_Attendance_Report(Convert.ToDateTime(txtfromdate.Text));
            grdvassigntech.DataBind();


        }

        else
        {
            txtfromdate.Text = DateTime.Today.ToShortDateString();
            objuser.from_date = Convert.ToDateTime(txtfromdate.Text);

            grdvassigntech.Visible = false;
            lblmsg.Visible = true;
            lblmsg.Text = "Please Select Current Date or Before Current Date";

            // grdvassigntech.DataSource = objuser.Daily_Attendance_Report(Convert.ToDateTime(txtfromdate.Text));
            //  grdvassigntech.DataBind();
        }
    }
}