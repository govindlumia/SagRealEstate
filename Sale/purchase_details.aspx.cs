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

public partial class Sale_purchase_details : System.Web.UI.Page
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
    protected void reset_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Sale/purchase_details.aspx");
    }
    protected void radcash_CheckedChanged1(object sender, EventArgs e)
    {
        Txtchequeno.Enabled = false;
        txtbankname.Enabled = false;

    }
    protected void radCheque_CheckedChanged1(object sender, EventArgs e)
    {
        Txtchequeno.Enabled = true;
        txtbankname.Enabled = true;

    }
    protected void view_Click(object sender, ImageClickEventArgs e)
    {
       // objReader = obj_main.purchar_sale_Duplicacycheck(ddlselectproject.SelectedValue.ToString(), txtblock.Text, Txtplotno.Text);
        if (objReader.Read())
        {
            lblMsg.Visible = true;
            lblMsg.Text = "This Plot already Sold Out";
            return;
        }
        else
        {
            lblMsg.Visible = false;

        //    objReader = obj_main.purchaser_filter_select(ddlselectproject.SelectedValue.ToString(), txtblock.Text.ToString(), Txtplotno.Text.ToString());
            if (objReader.Read())
            {

                txtplotcost.Text = objReader["plot_cost"].ToString();
                txtblock1.Text = objReader["block"].ToString();
                txtbooking.Text = objReader["booking_amount"].ToString();
                txtplot1.Text = objReader["plot_no"].ToString();
                txtproject.Text = objReader["project_name"].ToString();
                txtsaler.Text = objReader["registrant_name"].ToString();

            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Please Check the Block and Plot No";
                return;
            }
        }

    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {


        obj_main.bank_branch = txtbankname.Text;
        obj_main.cheque_no = Txtchequeno.Text;
        obj_main.amount = Txtcashamt.Text;
        obj_main.project_name = txtproject.Text;
        obj_main.plot_no = txtplot1.Text;
        obj_main.block = txtblock.Text;

        obj_main.booking_amount = txtbooking.Text;
        obj_main.plot_cost = txtplotcost.Text;
        obj_main.registrant_name = txtsaler.Text;

        //obj_main.purchaser_name = txtpurchase.Text;
        //obj_main.company_name = txtcompany.Text;


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

        //if (ViewState["flag"].ToString() == "I")
        //{
        obj_main.s_no = "0";
        obj_main.flag = "I";
      //  value = obj_main.purchaser_details_insert(obj_main);
        //}
        //else if (ViewState["flag"].ToString() == "U")
        //{
        //    obj_main.flag = "U";

        //    obj_main.sno = Request.QueryString["serial_no"].ToString();
        //    value = obj_main.token_details_insert(obj_main);
        //}

        Response.Redirect("~/Sale/show_purchase_details.aspx");


    }
}