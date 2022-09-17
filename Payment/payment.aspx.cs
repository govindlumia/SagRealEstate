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

public partial class payment : System.Web.UI.Page
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
 radcash.Checked = true;
            //objReader = obj_main.Branch_select(1);
            //Ddlbranchname.DataSource = objReader;
            //Ddlbranchname.DataTextField = "Branch_Name";
            //Ddlbranchname.DataValueField = "Branch_Name";
            //Ddlbranchname.DataBind();
            //Ddlbranchname.Items.Insert(0, "Select User ");
            //Ddlbranchname.Items[0].Value = "0";
            //Ddlbranchname.SelectedIndex = 0;
            //objReader.Close();

            objReader = obj_main.agentdetails_dd_select(1);
            Ddlagent.DataSource = objReader;
            Ddlagent.DataTextField = "agent_name";
            Ddlagent.DataValueField = "agent_name";
            Ddlagent.DataBind();
            Ddlagent.Items.Insert(0, "Select Employee");
            Ddlagent.Items[0].Value = "0";
            Ddlagent.SelectedIndex = 0;
            objReader.Close();
  
       
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objReader = obj_main.agent_payment_view( Ddlagent.SelectedValue.ToString());
        if (objReader.Read())
        {
            txtcom.Text = objReader["commision"].ToString();
            txtsal.Text = objReader["agent_sal"].ToString();
          //  Txttotalamount.Text = objReader["t_amount"].ToString();


        }
    }
    

    protected void ImageButton1_Click(object sender, EventArgs e)
    {
       
        obj_main.m_salary = Ddlmonth.SelectedValue.ToString();
        obj_main.agent_name = Ddlagent.SelectedItem.Text;
       // obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();
        obj_main.cheque_no = Txtchequeno.Text;
        obj_main.cash = Txtcashamt.Text;
        obj_main.Bank_Branch  = txtbankname.Text;
        obj_main.t_salary = txtsal.Text;
        obj_main.commission = txtcom.Text;

        if (radcash.Checked == true)
        {
            obj_main.mode_of_pay = "cash";


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

        //if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.sno = "0";

            value = obj_main.agent_payment_insert(obj_main);
        }
        //else if (ViewState["flag"].ToString() == "U")
        //{
        //    obj_main.flag = "U";
        //    // obj_main.agent_status = "Inactive";
        //    obj_main.sno = Request.QueryString["s_no"].ToString();
        //    value = obj_main.agent_payment_insert(obj_main);
        //}

        Response.Redirect("~/Payment/payment_details.aspx");



    
    }
}