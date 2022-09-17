using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Monthly_attendance : System.Web.UI.Page
{
    clsUser objuser = new clsUser();
    maincode obj_main = new maincode();
   
   
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {
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


           

        }

    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();


        objReader = objuser.attendancereport_pivot(ddlMonth.SelectedValue.ToString(), Ddlbranchname.SelectedValue.ToString());
        //grdAttendance.DataSource = objReader;
        GridView1.DataSource = objReader;
        GridView1.DataBind();
        objReader.Close();
    }
}