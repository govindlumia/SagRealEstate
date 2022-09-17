using System;
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

   
public partial class Project_add_plot_details : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    string value;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblusername.Text = Session["name"].ToString();
        string des = Session["role"].ToString();

        lblusername.Text = Session["name"].ToString();
        // string des = Session["designation"].ToString();

        clsAccount objAccount = new clsAccount();
      

        if ((Session["role"].ToString() == "Branch"))
        {
            //Hypl_doplus.Visible = true;
            Hypl_branch.Visible = false;
            hypl_employee.Visible = true;
            hypl_projects.Visible = false;
            hypl_plot.Visible = false;
           // hypl_dayrep.Visible = true;
            hypl_sales.Visible = true;
            hypl_emi.Visible = true;
            hypl_expenses.Visible = true;
            hypl_report.Visible = false;
            hypl_payment.Visible = true;
           // hypl_company_settings.Visible = false;

        }
        else
        {
            //// Hypl_doplus.Visible = true;
            // Hypl_branch.Visible = true;
            // hypl_employee.Visible = false;
            // hypl_projects.Visible = true;
            // hypl_plot.Visible = true;
            // hypl_dayrep.Visible = false;
            // hypl_sales.Visible = false;
            // hypl_emi.Visible = false;
            // hypl_expenses.Visible = false;
            // hypl_report.Visible = true;
            // hypl_payment.Visible = false;
            // hypl_company_settings.Visible = true;

        }
  
        if (!IsPostBack)
        {
            if (Session["user_id"] == null || Session["user_name"] == null)
            {
                Response.Redirect("~/admin_login.aspx");
               
                
            }

            objReader = obj_main.project_name_dd();
            ddlproject.DataSource = objReader;
            ddlproject.DataTextField = "project_name";
            ddlproject.DataValueField = "project_name";
            ddlproject.DataBind();
            ddlproject.Items.Insert(0, "Select Project");
            ddlproject.Items[0].Value = "0";
            ddlproject.SelectedIndex = 0;
            objReader.Close();

          //  Txtplotarea.Enabled = false;

            ViewState["flag"] = "I";

            if (Request.QueryString["serialno"] != null)
            {


                objReader = obj_main.plots_details_select_update(Request.QueryString["serialno"].ToString());
                if (objReader.Read())
                {

                    Txtplccharge.Text = objReader["plc"].ToString();
                    ddlproject.SelectedValue = objReader["project_name"].ToString();
                    Txtplotno.Text = objReader["plot_no"].ToString();
                    Txtplotarea.Text = objReader["Total_plot_area"].ToString();
                    Txt_plotlocation.Text = objReader["plotlocation"].ToString();
                    Txtratesqyrd.Text = objReader["rate_per_sqr"].ToString();
                    Txtplotspecification.Text = objReader["specification"].ToString();
                    Txtplotcost.Text = objReader["plot_cost"].ToString();
                    ddlplottype.SelectedValue = objReader["plottype"].ToString();
                    txtblock.Text = objReader["block"].ToString();


                }
                ViewState["flag"] = "U";

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
   
  
    protected void Txtplotno_TextChanged(object sender, EventArgs e)
    {
        objReader = obj_main.plots_details_Duplicacycheck(ddlproject.SelectedValue.ToString(), txtblock.Text, Txtplotno.Text);
        if (objReader.Read())
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Record are already inserted for this Plot";
            return;
        }
        else
        {
            lblMsg.Visible = false;
        }

    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
       
        obj_main.agent_status = "ACTIVE";
        obj_main.project_name = ddlproject.SelectedValue.ToString();
        obj_main.block = txtblock.Text;
        obj_main.plot_no = Txtplotno.Text;
        obj_main.Total_plot_area = Txtplotarea.Text;
        obj_main.plc = Txtplccharge.Text;
        obj_main.rate_per_sqr = Txtratesqyrd.Text;
        obj_main.plot_cost = Txtplotcost.Text;
        obj_main.plottype = ddlplottype.SelectedValue.ToString();
        obj_main.specification = Txtplotspecification.Text;
        
     
        obj_main.plotlocation = Txt_plotlocation.Text;
      
       
        obj_main.created_by = Session["user_id"].ToString();
        //obj_main.flag = "I";

        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.s_no = "0";
            value = obj_main.plots_details_insert(obj_main);

        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";
            obj_main.created_by = Session["user_id"].ToString();
            obj_main.s_no = Request.QueryString["serialno"].ToString();
            value = obj_main.plots_details_insert(obj_main);
        }
        Response.Redirect("~/Plot/update_plot_details.aspx");

    }

    protected void reset_Click(object sender, EventArgs e)
    {
         
        Response.Redirect("~/Plot/update_plot_details.aspx");

    }
    
}