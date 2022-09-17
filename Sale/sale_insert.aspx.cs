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


public partial class Sale_sale_insert : System.Web.UI.Page
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

        lblusername.Text = Session["name"].ToString();
        string des = Session["role"].ToString();

        lblusername.Text = Session["name"].ToString();
        // string des = Session["designation"].ToString();
        
        

        clsAccount objAccount = new clsAccount();
        SqlDataReader objReader;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SlickTicket"].ConnectionString);

       


        if (!IsPostBack)
        {
            objReader = obj_main.project_name_dd();
            ddlselectproject.DataSource = objReader;
            ddlselectproject.DataTextField = "project_name";
            ddlselectproject.DataValueField = "project_name";
            ddlselectproject.DataBind();
            ddlselectproject.Items.Insert(0, "Select Project");
            ddlselectproject.Items[0].Value = "0";
            ddlselectproject.SelectedIndex = 0;
            objReader.Close();

            objReader = obj_main.add_agent_dd_select(1);
            ddlagentname.DataSource = objReader;
            ddlagentname.DataTextField = "agent_name";
            ddlagentname.DataValueField = "agent_name";
            ddlagentname.DataBind();
            ddlagentname.Items.Insert(0, "Select Agent");
            ddlagentname.Items[0].Value = "0";
            ddlagentname.SelectedIndex = 0;
            objReader.Close();

            objReader = obj_main.agentdetails_dd_select(1);
            DdlEMPLOYEE.DataSource = objReader;
            DdlEMPLOYEE.DataTextField = "agent_name";
            DdlEMPLOYEE.DataValueField = "agent_name";
            DdlEMPLOYEE.DataBind();
            DdlEMPLOYEE.Items.Insert(0, "Select Employee ");
            DdlEMPLOYEE.Items[0].Value = "0";
            DdlEMPLOYEE.SelectedIndex = 0;
            objReader.Close();
            // obj_main.agent_name = ddlagent.SelectedValue.ToString();
            // obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();

            txtdate.Text = DateTime.Today.ToShortDateString();
            txtdiscount.Text = "0";

            ViewState["flag"] = "I";

            if (Request.QueryString["serial_no"] != null)
            {


                objReader = obj_main.sale_view_select_update(Request.QueryString["serial_no"].ToString());
                if (objReader.Read())
                {
                    
                   // ddlselectproject.Enabled = TRUE;
                 //   Txtplotno.Enabled = TRUE;
                   
                    ddlagentname.SelectedValue = objReader["agent_name"].ToString();
                  //  Ddlbranchname.SelectedValue = objReader["Branch_Name"].ToString();
                    ddlselectproject.SelectedValue = objReader["project_name"].ToString();
                    Txtaddress.Text = objReader["address"].ToString();
                    txtbankname.Text = objReader["bank_and_branch"].ToString();
                    Txtbookingamt.Text = objReader["booking_amount"].ToString();
                    Txtcashamt.Text = objReader["cash"].ToString();
                    Txtcustomername.Text = objReader["registrant_name"].ToString();
                    txtdate.Text = objReader["sale_date"].ToString();
                    Txtfathername.Text = objReader["father_name"].ToString();
                    Txtmob.Text = objReader["mobile_no"].ToString();
                    Txtnoemi.Text = objReader["no_of_emi"].ToString();

                    Txtplccharge.Text = objReader["plc"].ToString();
                    Txtplotarea.Text = objReader["total_plot_area"].ToString();
                    Txtplotcost.Text = objReader["plot_cost"].ToString();
                    txtplotcost1.Text = objReader["plot_cost"].ToString();
                    Txtplotno.Text = objReader["plot_no"].ToString();
                    Txtplotsize.Text = objReader["plot_size"].ToString();
                    Txtplotspecification.Text = objReader["specification"].ToString();

                    Txtratesqyrd.Text = objReader["rate_per_sq"].ToString();
                    Txtrestamt.Text = objReader["rest_amount"].ToString();
                    Txtemiamt.Text = objReader["emi_amount"].ToString();
                    Txtchequeno.Text = objReader["cheque_no"].ToString();
                  //  lblcomp.Text = objReader["Company"].ToString();
                    txtblock.Text = objReader["block"].ToString();
                    txtdiscount.Text = objReader["discount_amount"].ToString();  
                   // lblblock.Text = objReader["discount_amount"].ToString();
                    
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
        objReader = obj_main.plots_sale_Duplicacycheck(ddlselectproject.SelectedValue.ToString(), txtblock.Text, Txtplotno.Text);
        if (objReader.Read())
        {
            lblMsg.Visible = true;
            lblMsg.Text = "This Plot already Sold Out";
            return;
        }
        else
        {
            lblMsg.Visible = false;

            objReader = obj_main.sale_filter_select(ddlselectproject.SelectedValue.ToString(), txtblock.Text.ToString(), Txtplotno.Text.ToString());
            if (objReader.Read())
            {
                Txtplotspecification.Text = objReader["specification"].ToString();
                Txtplotsize.Text = objReader["plot_size"].ToString();
                Txtplotarea.Text = objReader["Total_plot_area"].ToString();
                Txtratesqyrd.Text = objReader["rate_per_sqr"].ToString();
              //  txtdiscount.Text = objReader["discount_amount"].ToString();
                Txtplccharge.Text = objReader["plc"].ToString();
               // lblcomp.Text = objReader["company"].ToString();
                Txtplotcost.Text = objReader["plotcost"].ToString();
                txtplotcost1.Text = objReader["plotcost"].ToString();
               // txtplotcost2.Text = objReader["plotcost"].ToString();
               // lbltplot.Text = objReader["no_of_plot"].ToString();
               // lbllocation.Text = objReader["project_location"].ToString();
               // lblblock.Text = objReader["block"].ToString();
                

            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Please Check the Block and Plot No";
                return;
            }
        }
    }

   
   
    protected void ImgCompany_Click(object sender, ImageClickEventArgs e)
    {
          Response.Redirect("~/home.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/admin_login.aspx");

    }
  
  
    protected void radcash_CheckedChanged(object sender, EventArgs e)
    {
        panelemi.Visible = false;

    }
    protected void radCheque_CheckedChanged(object sender, EventArgs e)
    {
        panelemi.Visible = true;
    }
    
    protected void radio_CheckedChanged(object sender, EventArgs e)
    {
        panelbankdetails.Visible = false;
    }
    protected void radioo_CheckedChanged(object sender, EventArgs e)
    {
        panelbankdetails.Visible = true;

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        
        obj_main.sale_date = Convert.ToDateTime(txtdate.Text);
        obj_main.plc = Txtplccharge.Text;
        obj_main.address = Txtaddress.Text;
       // obj_main.Branch_Name = Session["user_id"].ToString(); 
        obj_main.agent_name = ddlagentname.SelectedValue.ToString();
        obj_main.agent_status = "ACTIVE";
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
        obj_main.project_name = ddlselectproject.SelectedValue.ToString();
        obj_main.plot_no = Txtplotno.Text;
        obj_main.specification = Txtplotspecification.Text;
        obj_main.plot_size = Txtplotsize.Text;
        obj_main.total_plot_area = Txtplotarea.Text;
        obj_main.rate_per_sq = Txtratesqyrd.Text;
       
        obj_main.block = txtblock.Text;
        obj_main.project_location ="";
        obj_main.no_of_plot = "";
        obj_main.employee = DdlEMPLOYEE.SelectedValue.ToString();
        obj_main.discount_amount = txtdiscount.Text;
        obj_main.bank_branch = txtbankname.Text;
        obj_main.chequeno = txtcheq.Text;
        if (radio.Checked == true)
        {
            obj_main.mode_pay = "cash";
            // Txtchequeno.Visible = false;

        }
        else if (radioo.Checked == true)
            obj_main.mode_pay = "cheque";
        else
            obj_main.mode_pay = " ";




        if (radcash.Checked == true)
        {
            obj_main.mode_of_payment = "cash";
            // Txtchequeno.Visible = false;

        }
        else if (radCheque.Checked == true)
            obj_main.mode_of_payment = "cheque";
        else
            obj_main.mode_of_payment = " ";
        obj_main.Invoice_no = "0";
        obj_main.created_by = Session["user_id"].ToString();

        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.sno = "0";
            obj_main.flag = "I";
            value = obj_main.new_sale_insert(obj_main);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";

            obj_main.sno = Request.QueryString["serial_no"].ToString();
            value = obj_main.new_sale_insert(obj_main);
        }

        Response.Redirect("~/Sale/sale_detail_view.aspx");

    
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("~/Sale/sale_detail_view.aspx");
    
    }
    protected void RBTEMP_CheckedChanged1(object sender, EventArgs e)
    {
        ddlagentname.Enabled = false;
        DdlEMPLOYEE.Enabled = true;
      
    }
    protected void RBTAGENT_CheckedChanged(object sender, EventArgs e)
    {
        DdlEMPLOYEE.Enabled = false;
        ddlagentname.Enabled = true;
    }
  
}