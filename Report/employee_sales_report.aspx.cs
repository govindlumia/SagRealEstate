using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Employee_employee_sales_report : System.Web.UI.Page
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


            objReader = obj_main.agentdetails_dd_select(1);
            Ddlagent.DataSource = objReader;
            Ddlagent.DataTextField = "agent_name";
            Ddlagent.DataValueField = "agent_name";
            Ddlagent.DataBind();
            Ddlagent.Items.Insert(0, "Select Employee");
            Ddlagent.Items[0].Value = "0";
            Ddlagent.SelectedIndex = 0;
            objReader.Close();
            //objReader = obj_main.Branch_select(1);
            //agent_name.DataSource = objReader;
            //agent_name.DataTextField = "Branch_Name";
            //Ddlbranchname.DataValueField = "Branch_Name";
            //Ddlbranchname.DataBind();
            //Ddlbranchname.Items.Insert(0, "Select All Branch ");
            //Ddlbranchname.Items[0].Value = "0";
            //Ddlbranchname.SelectedIndex = 0;
            //objReader.Close();
            obj_main.agent_name = Ddlagent.SelectedValue.ToString();
          //  obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();


            obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_main.to_date = Convert.ToDateTime(txttodate.Text);

            grdLead.DataSource = obj_main.Employee_wise_sale_report(obj_main);
            grdLead.DataBind();
        }

    }
    //protected void Ddlbranchname_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    objReader = obj_main.EMPLOYEE_name_dd(Ddlbranchname.SelectedValue.ToString());
    //    ddlagent.DataSource = objReader;
    //    ddlagent.DataTextField = "agent_name";
    //    ddlagent.DataValueField = "agent_name";
    //    ddlagent.DataBind();
    //    ddlagent.Items.Insert(0, "Select All Employee");
    //    ddlagent.Items[0].Value = "0";
    //    ddlagent.SelectedIndex = 0;
    //    objReader.Close();
    //}
    
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
      
        obj_main.agent_name = Ddlagent.SelectedValue.ToString();
       // obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();

        obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
        obj_main.to_date = Convert.ToDateTime(txttodate.Text);

        grdLead.DataSource = obj_main.Employee_wise_sale_report(obj_main);
        grdLead.DataBind();

    
    }
}