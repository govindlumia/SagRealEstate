using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Linq;
using System.Xml.Linq;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class booking_cancel : System.Web.UI.Page
{maincode obj_main = new maincode();
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
            txtdate.Text = DateTime.Today.ToShortDateString();

            objReader = obj_main.project_name_dd();
            ddlselectproject.DataSource = objReader;
            ddlselectproject.DataTextField = "project_name";
            ddlselectproject.DataValueField = "project_name";
            ddlselectproject.DataBind();
            ddlselectproject.Items.Insert(0, "Select Project");
            ddlselectproject.Items[0].Value = "0";
            ddlselectproject.SelectedIndex = 0;
            objReader.Close();

        }
    }
   
  
    protected void Button1_Click1(object sender, EventArgs e)
    {
        objReader = obj_main.Cancel_Booking_Sale(ddlselectproject.SelectedValue.ToString(), txtblock.Text.ToString(), Txtplotno.Text.ToString());

        if (objReader.Read())
        {


            Txtfathername.Text = objReader["father_name"].ToString();
            Txtbookingamt.Text = objReader["booking_amount"].ToString();
            Txtaddress.Text = objReader["address"].ToString();
            Txtmob.Text = objReader["mobile_no"].ToString();
            Txtplotcost.Text = objReader["plot_cost"].ToString();
            Txtcustomername.Text = objReader["registrant_name"].ToString();
            Txtplotno.Text = objReader["plot_no"].ToString();
            Txtplotsize.Text = objReader["plot_size"].ToString();

            Txtratesqyrd.Text = objReader["rate_per_sq"].ToString();
            Txtplotarea.Text = objReader["total_plot_area"].ToString();

            Txtnoemi.Text = objReader["no_of_emi"].ToString();
            Txtemiamt.Text = objReader["emi_amount"].ToString();
            Txtrestamt.Text = objReader["rest_amount"].ToString();
           Txtplotspecification.Text = objReader["specification"].ToString();

           // panel2.Visible = true;
            lblMsg.Visible = false;

        }

        else
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Please Enter Correct Block & Plot No.";
           // panel2.Visible = false;

        }
    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        obj_main.project_name = ddlselectproject.SelectedValue.ToString();

        obj_main.sale_date = Convert.ToDateTime(txtdate.Text);
       
        obj_main.address = Txtaddress.Text;
     
        obj_main.mobile_no = Txtmob.Text;
        obj_main.father_name = Txtfathername.Text;
        obj_main.registrant_name = Txtcustomername.Text;
        
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
        obj_main.cancel_reason = txtcancelreason.Text;    
        obj_main.block = txtblock.Text;
 
        obj_main.block = txtblock.Text;
        //   obj_main.Company = lblcomp.Text;
        obj_main.plot_no = Txtplotno.Text;
        obj_main.created_by = Session["user_id"].ToString();

        value = obj_main.Cancel_Booking_Sale_update(obj_main);
         value = obj_main.new_sale_cancel_insert(obj_main);
        Response.Redirect("~/Sale/sale_detail_view.aspx");


    }
    protected void submit_Click1(object sender, EventArgs e)
    {

    }
}