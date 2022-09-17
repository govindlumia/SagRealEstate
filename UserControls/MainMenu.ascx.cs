using System;
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

public partial class UserControls_MainMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("../HR_login.aspx");
        }
        //lblUser.Text = Session["user_name"].ToString();
        lblid.Text = Session["user_id"].ToString();
        if (Session["role"].ToString() == "Supervisor")
        {
            Addemployee.Visible = false;
            Editemployee.Visible = false;
            Viewemployee.Visible = false;
            Userlist.Visible = false;
            roles.Visible = false;
            Employee.Visible = false;
            Admin.Visible = false;
            EditAttendance.Visible = false;
            //leaveDetails.Visible = false;
            holidayee.Visible = false;
            Assets.Visible = false;
            master.Visible = false;

        }


        if (Session["role"].ToString() == "Manager" || Session["role"].ToString() == "Regional Head")
        {
            Addemployee.Visible = false;
            Editemployee.Visible = false;
            Viewemployee.Visible = false;
            Userlist.Visible = false;
            roles.Visible = false;
            Employee.Visible = false;
            Admin.Visible = false;
            EditAttendance.Visible = false;
            //leaveDetails.Visible = false;
            holidayee.Visible = false;
            addassets.Visible = false;
            master.Visible = false;

        }




        if (Session["role"].ToString() == "Executive")
        {
            Addemployee.Visible = false;
            Editemployee.Visible = false;
            Viewemployee.Visible = false;
            Userlist.Visible = false;
            roles.Visible = false;

            MarkAttendance.Visible = false;
            EditAttendance.Visible = false;
            viewAttendance.Visible = false;
            EmployeeDetails.Visible = false;
            AttendanceDetails.Visible = false;
            Employee.Visible = false;
            Admin.Visible = false;
            Attendance.Visible = false;
            Reports.Visible = false;

            leaveDetails.Visible = false;
            holidayee.Visible = false;
            LeaveDtails.Visible = false;
            Assets.Visible = false;
            EmpCount.Visible = false;
            master.Visible = false;

        }
        if (Session["role"].ToString() == "HR-Executive")
        {
            Userlist.Visible = false;
            roles.Visible = false;
            Admin.Visible = false;
            holidayee.Visible = false;
            Attendance.Visible = false;
            //Employee.Visible = false;
            //LeaveDtails.Visible = false;
            //Reports.Visible = false;
            master.Visible = false;
        }
        if (Session["role"].ToString() == "HR-Admin")
        {
            Userlist.Visible = false;
            roles.Visible = false;
            Admin.Visible = false;
            holidayee.Visible = false;
            //Employee.Visible = false;
            //master.Visible = false;
            
        }
        if (Session["role"].ToString() == "Account-Executive")
        {
            Userlist.Visible = false;
            roles.Visible = false;
            Admin.Visible = false;
            holidayee.Visible = false;
            Attendance.Visible = false;
            Employee.Visible = false;
            LeaveDtails.Visible = false;
            Reports.Visible = false;
            EditAttendance.Visible = false;
            master.Visible = false;
        }
        if (Session["role"].ToString() == "Account-Admin")
        {
            Userlist.Visible = false;
            roles.Visible = false;
            Admin.Visible = false;
            holidayee.Visible = false;
            Employee.Visible = false;
            EditAttendance.Visible = false;
            master.Visible = false;

        }
        //if (Session["role"].ToString() == "Management")
        //{
        //    Employee.Visible = false;
        //    Admin.Visible = false;
        //    AboutMe.Visible = false;
        
        //}




    }
    protected void myinformation(object sender, EventArgs e)
    {
        Response.Redirect("~/Employee/Employee.aspx?employee=i&id=" + lblid.Text);

    }

    protected void home(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");

    }
    //protected void help(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/Help.aspx");

    //}

    //protected void holiday(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/Policy/Holiday_List.aspx");

    //}

}
