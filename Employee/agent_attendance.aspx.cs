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
using System.Configuration;
using System.Net.Mail;
using System.Data;

public partial class Agent_agent_attendance : System.Web.UI.Page
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
            Ddlbranchname.Items.Insert(0, "Select Branch ");
            Ddlbranchname.Items[0].Value = "0";
            Ddlbranchname.SelectedIndex = 0;
            objReader.Close();
            txtdate.Text = DateTime.Today.ToShortDateString();


            objReader = obj_main.agentdetails_dd_select(1);
            Ddlagent.DataSource = objReader;
            Ddlagent.DataTextField = "Agent_name";
            Ddlagent.DataValueField = "Agent_name";
            Ddlagent.DataBind();
            Ddlagent.Items.Insert(0, "Select Employee");
            Ddlagent.Items[0].Value = "0";
            Ddlagent.SelectedIndex = 0;
            objReader.Close();
            // Agent_Attendance_SELECT_UPDATE
            txtdate.Text = DateTime.Today.ToShortDateString();

            ViewState["flag"] = "I";

            if (Request.QueryString["s_no"] != null)
            {


                objReader = obj_main.Agent_Attendance_SELECT_UPDATE(Request.QueryString["s_no"].ToString());
                if (objReader.Read())
                {
                  
                    Ddlbranchname.SelectedValue = objReader["Branch_Name"].ToString();
                    Ddlagent.SelectedValue = objReader["Agent_name"].ToString();
                    txtdate.Text = objReader["S_Date"].ToString();
                    Txtabsent.Text = objReader["Absent"].ToString();


                    txtleave.Text = objReader["Leave"].ToString();
                    TxtLWP.Text = objReader["L_Without_Pay"].ToString();
                    Txtworkingdays.Text = objReader["T_Working_Day"].ToString();
                   

                }
                ViewState["flag"] = "U";


            }
        }
    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
    
        obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();
        obj_main.agent_name = Ddlagent.SelectedValue.ToString();
        obj_main.doj = Convert.ToDateTime(txtdate.Text);
        obj_main.T_Working_Day = Txtworkingdays.Text;
        obj_main.L_Without_Pay = TxtLWP.Text;
        obj_main.Leave = txtleave.Text;
        obj_main.Absent = Txtabsent.Text;

        obj_main.created_by = Session["user_id"].ToString();
       // obj_main.flag = "I";
        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.sno = "0";
          
            value = obj_main.Agent_Attendance_insert(obj_main);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";
           // obj_main.agent_status = "Inactive";
            obj_main.sno = Request.QueryString["s_no"].ToString();
            value = obj_main.Agent_Attendance_insert(obj_main);
        }

        Response.Redirect("~/Employee/Attendance_show_details.aspx");


    }
}