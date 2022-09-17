using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Attendance : System.Web.UI.Page
{
    clsUser objuser = new clsUser();
    maincode obj_main = new maincode();
   
    SqlDataReader objReader;

    char flag = 'I';
    int i;
    string sno;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["flag"] = "I";
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
           // HyperLink settings = (HyperLink)Master.FindControl("hyplAdmin");
           // settings.BackColor = System.Drawing.Color.White;
           // settings.ForeColor = System.Drawing.Color.Black;
            txtfromdate.Text = DateTime.Today.ToShortDateString();
            txttodate.Text = DateTime.Today.ToShortDateString();
            DateTime dt = Convert.ToDateTime(txtfromdate.Text);
            DateTime dt1 = Convert.ToDateTime(txttodate.Text);
            TimeSpan ts = dt1.Subtract(dt);
            int i = Convert.ToInt16(ts.Days.ToString());


            objReader = obj_main.Branch_select(1);
            Ddlbranchname.DataSource = objReader;
            Ddlbranchname.DataTextField = "Branch_Name";
            Ddlbranchname.DataValueField = "Branch_Name";
            Ddlbranchname.DataBind();
            Ddlbranchname.Items.Insert(0, "Select All Branch ");
            Ddlbranchname.Items[0].Value = "0";
            Ddlbranchname.SelectedIndex = 0;
            objReader.Close();
            
            obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();


            if (Request.QueryString["Serial_no"] != null)
            {


                // Session["Lead_no"] = Request.QueryString["LeadId"].ToString();

                Session["Serial_no"] = Request.QueryString["Serial_no"].ToString();


                // lead_no = Request.QueryString["lead_no"].ToString();

            }

        }
        ViewState["flag"] = "U";
    }

    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        PanelHEAD.Visible = false;
        DateTime dt = Convert.ToDateTime(txtfromdate.Text);
        DateTime dt1 = Convert.ToDateTime(txttodate.Text);
        TimeSpan ts = dt1.Subtract(dt);
        int i = Convert.ToInt16(ts.Days.ToString());
        //if (Session["user_id"].ToString() != "5")
        //{

        //    if (i > 2)
        //    {
        //        lblMSg.Visible = true;
        //        lblMSg.Text = "you can not select date before two days";
        //        grdAttendance.Visible = false;
        //        return;
        //    }
        //}
        
        objuser.created_by = Session["user_id"].ToString();
        objReader = objuser.Branch_check(Ddlbranchname.SelectedValue.ToString());
        if (objReader.Read())
        {
            string s = objReader["emp_id"].ToString();
            //if (objReader["emp_id"].ToString() == Session["user_id"].ToString())
            //{
                lblMSg.Visible = false;
                grdAttendance.Visible = true; 
                savebtn.Visible = true;
                objReader = objuser.CRM_attendance_insert_view(Ddlbranchname.SelectedValue.ToString(),Convert.ToDateTime(txtfromdate.Text));
                grdAttendance.DataSource = objReader;
                grdAttendance.DataBind();
                objReader.Close();

            //}
            //else
            //{
            //    lblMSg.Visible = true;
            //    savebtn.Visible = false;
            //    lblMSg.Text = "you are not authorized to Access other supervisor's Record ";
            //    grdAttendance.Visible = false;
            //    return;

            //}

        }
    }
    protected void reset_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/attendance.aspx");

    }
    protected void grdAttendance_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {


            DataSet ds1 = new DataSet();
            ds1 = objuser.attendance_dd_select();
            DropDownList list2 = (DropDownList)e.Row.FindControl("ddlAttendanceStatus");
            list2.DataSource = ds1.Tables[0];
            list2.DataValueField = "att_name";
            list2.DataTextField = "att_name";
            list2.DataBind();
            list2.Items.Insert(0, "Select Attendance Status");
            list2.Items[0].Value = "0";
            list2.SelectedIndex = 0;
            Label lblAttendance = ((Label)e.Row.FindControl("attendance"));
            string x = lblAttendance.Text;
            list2.SelectedValue = x;


            DataSet ds2 = new DataSet();
            ds2 = objuser.Leave_Reason_dd_select();
            DropDownList list3 = (DropDownList)e.Row.FindControl("ddlReason");
            list3.DataSource = ds2.Tables[0];
            list3.DataValueField = "leave_name";
            list3.DataTextField = "leave_name";
            list3.DataBind();
            list3.Items.Insert(0, "Select Reason");
            list3.Items[0].Value = "0";
            list3.SelectedIndex = 0;
            list3.Enabled = false;

            Label lblreason = ((Label)e.Row.FindControl("reason"));
            string y = lblreason.Text;

            list3.Enabled = true;
            list3.SelectedValue = y;

            if (Convert.ToString(y) != "Present")
            {
                list3.Enabled = true;
            }
            else
            {
                list3.Enabled = false;
                
                
            }

            list3.SelectedValue = y;



            TextBox txtremarks = (TextBox)e.Row.FindControl("txtRemarks");
            Label lblremarks = ((Label)e.Row.FindControl("remarks"));
            string z = lblremarks.Text;
            txtremarks.Text = z;

            TextBox txtIntime = (TextBox)e.Row.FindControl("txtIntime");
            Label lblIntime = ((Label)e.Row.FindControl("lblIntime"));
            string a = lblIntime.Text;
            txtIntime.Text = a;

            TextBox txtOutTime = (TextBox)e.Row.FindControl("txtOutTime");
            Label lblOutTime = ((Label)e.Row.FindControl("lblOutTime"));
            string c = lblOutTime.Text;
            txtOutTime.Text = c;

        }

    }
    private void Page_PreRender(object sender, EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }
    protected void grdAttendance_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView GridControl = (GridView)sender;
        DropDownList ddl1 = (DropDownList)grdAttendance.Rows[e.NewEditIndex].Cells[9].FindControl("ddlAttendanceStatus");
    }
  
    protected void Save_Click(object sender, EventArgs e)
    {
        //if (Session["update"].ToString() == ViewState["update"].ToString())
        //{
        //    try
        //    {

        if (Ddlbranchname.SelectedIndex == 0)
        {
            lblMSg.Visible = true;
            lblMSg.Text = "Please Select the Branch";

            grdAttendance.Visible = false;
            return;
        }

        grdAttendance.Visible = true;
        objReader = objuser.CRM_attendance_insert_view(Ddlbranchname.SelectedValue.ToString(), Convert.ToDateTime(txtfromdate.Text));

        if (objReader.Read())
        {
            if (objReader["attendence_status"].ToString() != "0")
            {
                flag = 'U';
                //   Session["Serial_no"] = Request.QueryString["Serial_no"].ToString();
            }
            else
            {
                flag = 'I';
                objuser.Serial_no = "0";
            }
        }
        objReader.Close();

        int count;
        for (count = 0; count < grdAttendance.Rows.Count; count++)
        {
            // Session["Serial_no"] = 


            string strId = grdAttendance.Rows[count].Cells[1].Text;
            string strName = grdAttendance.Rows[count].Cells[3].Text;
            TextBox tx1 = (TextBox)grdAttendance.Rows[count].FindControl("txtRemarks");
            string strRemarks = tx1.Text;
             TextBox txtintime = (TextBox)grdAttendance.Rows[count].FindControl("txtIntime");
            string strintime =txtintime.Text;
             TextBox txtouttime = (TextBox)grdAttendance.Rows[count].FindControl("txtOutTime");
            
                string strouttime=txtouttime.Text;

                Label lblagent_name = (Label)grdAttendance.Rows[count].FindControl("lblagent_name");
                string agent_name = lblagent_name.Text;

            Label lblSerial_no = (Label)grdAttendance.Rows[count].FindControl("lblSerial_no");
            string Serial_no = lblSerial_no.Text;


            Label lblBranch_Name = (Label)grdAttendance.Rows[count].FindControl("lblBranch_Name");
            string Branch_Name = lblBranch_Name.Text;

           

            // DropDownList list1 = (DropDownList)grdAttendance.Rows[count].FindControl("ddlReportingOffice");
            //string stroffice = grdAttendance.Rows[count].Cells[9].Text; //list1.SelectedValue.ToString();
            DropDownList list2 = (DropDownList)grdAttendance.Rows[count].FindControl("ddlAttendanceStatus");
            string strattstatus = list2.SelectedValue.ToString();
            DropDownList list3 = (DropDownList)grdAttendance.Rows[count].FindControl("ddlReason");
            string strReason = list3.SelectedValue.ToString();
            //string serial_no = "0";
            //string intime, string outtime, char flag, string created_by
            i = objuser.CRM_attendance_insert(Serial_no,agent_name, Ddlbranchname.SelectedValue.ToString(), strattstatus, strReason, strRemarks, Convert.ToDateTime(txtfromdate.Text),strintime,strouttime,flag, Session["user_id"].ToString());


        }
        if (count > 0)
        {
            lblMSg.Visible = true;
            lblMSg.Text = "Attendance save successfully!!!";
            grdAttendance.Visible = false;

        }

        //}

        //catch (Exception myException)
        //{

        //    lblMSg.Text = "Request failed." + myException.Message;
        //}

        Response.Redirect("~/Admin/view_daily_attendance.aspx");


        //}
    }
    protected void ddlAttendanceStatus_SelectedIndexChanged1(object sender, EventArgs e)
    {
          
        DropDownList ddl = new DropDownList();
        DropDownList ddl1 = new DropDownList();
        foreach (GridViewRow row in grdAttendance.Rows)
        {
            ddl = (DropDownList)row.FindControl("ddlAttendanceStatus");
            ddl1 = (DropDownList)row.FindControl("ddlReason");

            if (ddl.SelectedIndex == 1)
            {
                // ddl1.Visible = true;
                ddl1.Enabled = true;
                ddl1.SelectedIndex = 0;
            }
            else
            {
                ddl1.Enabled = false;


            }
        }
    }
    protected void grdAttendance_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btncalcel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/attendance.aspx");
    }
}