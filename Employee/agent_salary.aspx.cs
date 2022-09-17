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

public partial class Agent_agent_salary : System.Web.UI.Page
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

            objReader = obj_main.agentdetails_dd_select(1);
            Ddlagent.DataSource = objReader;
            Ddlagent.DataTextField = "agent_name";
            Ddlagent.DataValueField = "agent_name";
            Ddlagent.DataBind();
            Ddlagent.Items.Insert(0, "Select Employee");
            Ddlagent.Items[0].Value = "0";
            Ddlagent.SelectedIndex = 0;
            objReader.Close();
          //  agent_sal_SELECT_UPDATE

           // obj_main.agent_name = Ddlagent.SelectedValue.ToString();
           // obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();

            ViewState["flag"] = "I";

            if (Request.QueryString["s_no"] != null)
            {


                objReader = obj_main.agent_sal_SELECT_UPDATE(Request.QueryString["s_no"].ToString());
                if (objReader.Read())
                {   

                    Ddlbranchname.SelectedValue = objReader["Branch_Name"].ToString();
                    Ddlagent.SelectedValue = objReader["Agent_name"].ToString();
                    txtcom.Text = objReader["commission"].ToString();
                    txtsal.Text = objReader["t_salary"].ToString();
                    txtbankname.Text = objReader["Bank_Branch"].ToString();
                    Txtcashamt.Text = objReader["cash"].ToString();
                    Txtchequeno.Text = objReader["cheque_no"].ToString();
                   // Txtyear.Text = objReader["S_Date"].ToString();
                   

                }
                ViewState["flag"] = "U";


            }

        }
    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    { //Branch_Name , agent_name , m_salary , t_salary , commision , mode_of_pay , Bank_Branch
        obj_main.agent_name = Ddlagent.SelectedValue.ToString();
        obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();
       // obj_main.m_salary = DropDownList1.SelectedItem.ToString();
        obj_main.cheque_no = Txtchequeno.Text;
        obj_main.cash = Txtcashamt.Text;
        obj_main.Bank_Branch  = txtbankname.Text;
        obj_main.t_salary = txtsal.Text;
        obj_main.commission = txtcom.Text;

        if (radcash.Checked == true)
        {
            obj_main.mode_of_pay = "cash";
            // Txtchequeno.Visible = false;

        }
        else if (radCheque.Checked == true)
        {
            obj_main.mode_of_pay = "cheque";
        }
        else  
        {
            obj_main.mode_of_pay = "";
        }

        obj_main.created_by = Session["user_id"].ToString();
        // obj_main.flag = "I";
        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.sno = "0";

            value = obj_main.agent_sal_insert(obj_main);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";
            // obj_main.agent_status = "Inactive";
            obj_main.sno = Request.QueryString["s_no"].ToString();
            value = obj_main.agent_sal_insert(obj_main);
        }

        Response.Redirect("~/Employee/show_agent_salary.aspx");



    }
}