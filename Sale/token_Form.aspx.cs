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


public partial class Sale_token_Form : System.Web.UI.Page
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
            txtagdate.Text = DateTime.Today.ToShortDateString();
            
            objReader = obj_main.project_name_dd();
            ddlselectproject.DataSource = objReader;
            ddlselectproject.DataTextField = "project_name";
            ddlselectproject.DataValueField = "project_name";
            ddlselectproject.DataBind();
            ddlselectproject.Items.Insert(0, "----------Select Project----------");
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

            ViewState["flag"] = "I";
            if (Request.QueryString["s_no"] != null)
            {


                objReader = obj_main.token_details_update_select(Request.QueryString["s_no"].ToString());
                if (objReader.Read())
                {
                    ddlagentname.SelectedValue = objReader["agent_name"].ToString();
                    DdlEMPLOYEE.SelectedValue = objReader["employee"].ToString();
                    //  ddlco.SelectedValue = objReader["project_name"].ToString();

                    ddlselectproject.SelectedValue = objReader["project_name"].ToString();
                    Txt_Block.Text = objReader["block"].ToString();
                    Txt_Plot.Text = objReader["plot_no"].ToString();

                    Txtcustomername.Text = objReader["registrant_name"].ToString();
                    Txtfathername.Text = objReader["father_name"].ToString();
                    Txtmob.Text = objReader["mobile_no"].ToString();
                    Txtaddress.Text = objReader["address"].ToString();
                    txtagdate.Text = objReader["agr_date"].ToString();
                  //  txttimeperiod.Text = objReader["time_period"].ToString();
                    Txtplotsize.Text = objReader["plot_size"].ToString();
                    txtratesqyard.Text = objReader["rate_per_sq"].ToString();

                    Txtcashamt.Text = objReader["amount"].ToString();
                    Txtchequeno.Text = objReader["cheque_no"].ToString();
                    txtbankname.Text = objReader["bank_branch"].ToString();


                    //txt_no_of_plot.Text = objReader["no_of_plot"].ToString();
                    //txtblng.Text = objReader["Company"].ToString();
                    //txtprojeclocation.Text = objReader["project_location"].ToString();
                    //txtprojectname.Text = objReader["project_name"].ToString();
                    //txtblock.Text = objReader["block"].ToString();
                }
                ViewState["flag"] = "U";
            }

        }
    }
    protected void radcash_CheckedChanged(object sender, EventArgs e)
    {
        Txtchequeno.Enabled = false;
        txtbankname.Enabled = false;
        Txtcashamt.Enabled = true;

    }
    protected void radCheque_CheckedChanged(object sender, EventArgs e)
    {
        Txtchequeno.Enabled = true;
        txtbankname.Enabled = true;
        Txtcashamt.Enabled = true;
    }
   
    

    protected void RBTEMP_CheckedChanged(object sender, EventArgs e)
    {
        ddlagentname.Enabled = false;
        DdlEMPLOYEE.Enabled = true;
    }
    protected void RBTAGENT_CheckedChanged(object sender, EventArgs e)
    {
        DdlEMPLOYEE.Enabled = false;
        ddlagentname.Enabled = true;
    }

    //protected void ddlselectproject_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    SqlConnection conn = new SqlConnection("Data Source=182.50.133.111;Initial Catalog=SAGONI_REALSTATE;uid=SAGONI_REALSTATE;pwd=SAGONI_REALSTATE_123");

    //    conn.Open();
    //    SqlCommand cmd = new SqlCommand("select DISTINCT block from plots_details where project_name ='" + ddlselectproject.SelectedValue + "'", conn);
    //    SqlDataReader dr = cmd.ExecuteReader();

    //    ddl_block.DataSource = dr;

    //    ddl_block.Items.Clear();

    //    ddl_block.Items.Add("--Select Block--");

    //    ddl_block.DataTextField = "block";
    //    ddl_block.DataValueField = "block";
    //    //ddl_agent.DataValueField = "Introducer";

    //    ddl_block.DataBind();
    //    ddl_block.Items.Insert(0, new ListItem("Select Block", "0"));
    //    conn.Close();
    //}
    //protected void ddl_block_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    SqlConnection conn = new SqlConnection("Data Source=182.50.133.111;Initial Catalog=SAGONI_REALSTATE;uid=SAGONI_REALSTATE;pwd=SAGONI_REALSTATE_123");

    //    conn.Open();
    //    SqlCommand cmd = new SqlCommand("select DISTINCT plot_no from plots_details where block ='" + ddl_block.SelectedValue + "'and project_name ='" + ddlselectproject.SelectedValue + "'", conn);
    //    SqlDataReader dr = cmd.ExecuteReader();

    //    ddl_plotno.DataSource = dr;

    //    ddl_plotno.Items.Clear();

    //    ddl_plotno.Items.Add("--Select Plot--");

    //    ddl_plotno.DataTextField = "plot_no";
    //    ddl_plotno.DataValueField = "plot_no";
    //    //ddl_agent.DataValueField = "Introducer";

    //    ddl_plotno.DataBind();
    //    ddl_plotno.Items.Insert(0, new ListItem("Select Plot", "0"));
    //    conn.Close();
    //}
    protected void ddlagentname_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=182.50.133.111;Initial Catalog=SAGONI_REALSTATE;uid=SAGONI_REALSTATE;pwd=SAGONI_REALSTATE_123");

        conn.Open();
        SqlCommand cmd = new SqlCommand("select  pancard from add_agent where agent_name ='" + ddlagentname.SelectedValue + "'", conn);
        SqlDataReader dr = cmd.ExecuteReader();

        ddl_agent_pancard.DataSource = dr;

        ddl_agent_pancard.Items.Clear();

        ddl_agent_pancard.Items.Add("--Select Agent Pancard No--");

        ddl_agent_pancard.DataTextField = "pancard";
        ddl_agent_pancard.DataValueField = "pancard";
        //ddl_agent.DataValueField = "Introducer";

        ddl_agent_pancard.DataBind();
        conn.Close();
    }




    protected void submit_Click(object sender, EventArgs e)
    {
        
        obj_main.employee = DdlEMPLOYEE.SelectedValue.ToString();
        obj_main.agent_name = ddlagentname.SelectedValue.ToString();
        obj_main.status = "ACTIVE";
        obj_main.address = Txtaddress.Text;
        // obj_main.no_of_plots = Txtplotno.Text;
        obj_main.bank_branch = txtbankname.Text;
        obj_main.mobile_no = Txtmob.Text;
        obj_main.father_name = Txtfathername.Text;
        obj_main.registrant_name = Txtcustomername.Text;
        obj_main.cheque_no = Txtchequeno.Text;
        obj_main.amount = Txtcashamt.Text;
        obj_main.project_name = ddlselectproject.SelectedValue.ToString();
        obj_main.plot_no = Txt_Plot.Text;
        obj_main.block = Txt_Block.Text;
        obj_main.address = Txtaddress.Text;
        
       obj_main.agr_date = Convert.ToDateTime(txtagdate.Text);
      //  obj_main.time_period = txttimeperiod.Text;

        obj_main.rate_per_sq = txtratesqyard.Text;

        obj_main.co = ddlco.SelectedValue.ToString();
        obj_main.plot_size = Txtplotsize.Text;

        obj_main.address = Txtaddress.Text;

        obj_main.created_by = Session["user_id"].ToString();
        if (radcash.Checked == true)
        {
            obj_main.mode_of_payment = "cash";
            // Txtchequeno.Visible = false;

        }
        else if (radCheque.Checked == true)
            obj_main.mode_of_payment = "cheque";
        else
            obj_main.mode_of_payment = "cash";

        if (ViewState["flag"].ToString() == "I")
        {
        obj_main.s_no = "0";
        obj_main.flag = "I";
        value = obj_main.token_details_insert(obj_main);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";

            obj_main.s_no = Request.QueryString["s_no"].ToString();
            value = obj_main.token_details_insert(obj_main);
        }

        Response.Redirect("~/Sale/show_token_details.aspx");


    
    }
    protected void reset_Click(object sender, EventArgs e)
    {
      
        Response.Redirect("~/Sale/token_Form.aspx");
    
    }
}