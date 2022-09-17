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

public partial class emi_entry : System.Web.UI.Page
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
            //objReader = obj_main.project_name_dd();
            //ddlselectproject.DataSource = objReader;
            //ddlselectproject.DataTextField = "project_name";
            //ddlselectproject.DataValueField = "project_name";
            //ddlselectproject.DataBind();
            //ddlselectproject.Items.Insert(0, "Select Project");
            //ddlselectproject.Items[0].Value = "0";
            //ddlselectproject.SelectedIndex = 0;
            //objReader.Close();

            //objReader = obj_main.agentdetails_dd_select(1);
            //ddlagentname.DataSource = objReader;
            //ddlagentname.DataTextField = "agent_name";
            //ddlagentname.DataValueField = "agent_name";
            //ddlagentname.DataBind();
            //ddlagentname.Items.Insert(0, "Select Agent");
            //ddlagentname.Items[0].Value = "0";
            //ddlagentname.SelectedIndex = 0;
            //objReader.Close();

       //  Txtdate1.Text = DateTime.Today.ToShortDateString();
         txtdate.Text = DateTime.Today.ToShortDateString();
        
         ViewState["flag"] = "I";

         if (Request.QueryString["serial_no"] != null)
         {


             objReader = obj_main.Emi_view_select_update(Request.QueryString["serial_no"].ToString());
             if (objReader.Read())
             {
                 txtsearch.Enabled = false;
                 txtproject.Enabled = false;
                 Txtplotno.Enabled = false;
                 txtcid.Enabled = false;
                 txtcid.Text = objReader["CustomerId"].ToString();
                     // ddlagentname.SelectedValue = objReader["CustomerId"].ToString();
                 //  Ddlbranchname.SelectedValue = objReader["Branch_Name"].ToString();
                 txtproject.Text = objReader["project_name"].ToString();
                 Txtaddress.Text = objReader["address"].ToString();
                 txtbankname.Text = objReader["bank_and_branch"].ToString();
                 Txtbookingamt.Text = objReader["booking_amount"].ToString();
                 Txtcashamt.Text = objReader["cash"].ToString();
                 Txtcustomername.Text = objReader["registrant_name"].ToString();
                // txtdate.Text = objReader["sale_date"].ToString();
                 Txtfathername.Text = objReader["father_name"].ToString();
                 Txtmob.Text = objReader["mobile_no"].ToString();
                 Txtnoemi.Text = objReader["no_of_emi"].ToString();

                // Txtplccharge.Text = objReader["plc"].ToString();
                 Txtplotarea.Text = objReader["total_plot_area"].ToString();
                 Txtplotcost.Text = objReader["plot_cost"].ToString();
                 Txtplotno.Text = objReader["plot_no"].ToString();
                 Txtplotsize.Text = objReader["plot_size"].ToString();
                 Txtplotspecification.Text = objReader["specification"].ToString();

                 Txtratesqyrd.Text = objReader["rate_per_sq"].ToString();
                 Txtrestamt.Text = objReader["rest_amount"].ToString();
                 Txtemiamt.Text = objReader["emi_amount"].ToString();
                 Txtchequeno.Text = objReader["cheque_no"].ToString();
                 //  lblcomp.Text = objReader["Company"].ToString();
                 txtblock.Text = objReader["block"].ToString();

                 // lblblock.Text = objReader["block"].ToString();

                 //  lbltplot.Text = objReader["no_of_plot"].ToString();
                 // lbllocation.Text = objReader["project_location"].ToString();

                 Button1.Visible = false;

             }
             ViewState["flag"] = "U";
         }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objReader = obj_main.Emi_filter_select_cid(txtsearch.Text.ToString());
        if (objReader.Read())
  
        {
            Txtplotspecification.Text = objReader["specification"].ToString();
            Txtplotsize.Text = objReader["plot_size"].ToString();
            Txtplotarea.Text = objReader["total_plot_area"].ToString();
            Txtratesqyrd.Text = objReader["rate_per_sq"].ToString();
            Txtcustomername.Text = objReader["registrant_name"].ToString();
            Txtfathername.Text = objReader["father_name"].ToString();
            Txtmob.Text = objReader["mobile_no"].ToString();
            Txtaddress.Text = objReader["address"].ToString();
            Txtplotcost.Text = objReader["plot_cost"].ToString();
            Txtbookingamt.Text = objReader["booking_amount"].ToString();
            Txtrestamt.Text = objReader["rest_amount"].ToString();
            Txtnoemi.Text = objReader["no_of_emi"].ToString();
            Txtemiamt.Text = objReader["emi_amount"].ToString();
            txtcid.Text = objReader["CustomerId"].ToString();
            txtproject.Text = objReader["project_name"].ToString();
            Txtplotno.Text = objReader["plot_no"].ToString();
            txtblock.Text = objReader["block"].ToString();


        }
    }
 
  
    

    protected void radcash_CheckedChanged(object sender, EventArgs e)
    {
        Txtchequeno.Enabled = false;
        txtbankname.Enabled = false;
    }
    protected void radCheque_CheckedChanged(object sender, EventArgs e)
    {
        Txtchequeno.Enabled = true;
        txtbankname.Enabled = true;
    }
    protected void submit_Click1(object sender, EventArgs e)
    {
        
       
        //Txtdate1.Text = DateTime.Today.ToShortDateString();
        obj_main.emi_date = Convert.ToDateTime(txtdate.Text);
        //obj_main.sale_date = Convert.ToDateTime(txtdate.Text);
        obj_main.address = Txtaddress.Text;
        obj_main.amount = Txtcashamt.Text;
        // obj_main.agent_name = ddlagentname.SelectedValue.ToString();
        // obj_main.agent_status = "Y";
        obj_main.bank_and_branch = txtbankname.Text;
        obj_main.mobile_no = Txtmob.Text;
        obj_main.father_name = Txtfathername.Text;
        obj_main.registrant_name = Txtcustomername.Text;
        obj_main.cheque_no = Txtchequeno.Text;
        obj_main.cash = Txtcashamt.Text;
        obj_main.emi_amount = Txtemiamt.Text;
        obj_main.no_of_emi = Txtnoemi.Text;
        obj_main.rest_amount = Txtrestamt.Text;
        obj_main.booking_amount = Txtbookingamt.Text;
        obj_main.plot_cost = Txtplotcost.Text;
        obj_main.project_name = txtproject.Text;
        obj_main.plot_no = Txtplotno.Text;
        obj_main.specification = Txtplotspecification.Text;
        obj_main.plot_size = Txtplotsize.Text;
        obj_main.total_plot_area = Txtplotarea.Text;
        obj_main.rate_per_sq = Txtratesqyrd.Text;
        obj_main.block = txtblock.Text;
        obj_main.CustomerId = txtcid.Text;

        if (radcash.Checked == true)
        {
            obj_main.mode_of_payment = "cash";
           
        }

        else if (radCheque.Checked == true)
        {
            obj_main.mode_of_payment = "cheque";
           
        }
        else
            obj_main.mode_of_payment = "Cash";

        obj_main.created_by = Session["user_id"].ToString();
  

        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.emi_Invoice_no = "0";
            obj_main.sno = "0";
            obj_main.flag = "I";
            value = obj_main.emi_entry_detail_insert(obj_main);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";

            obj_main.sno = Request.QueryString["serial_no"].ToString();
            value = obj_main.emi_entry_detail_insert(obj_main);
        }
        Response.Redirect("~/EMI/view_emi_detail.aspx");

    }

    protected void reset_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("~/EMI/view_emi_detail.aspx");
    
    }
}