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

public partial class expense_entry : System.Web.UI.Page
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
           // Expense_Entry_UPDATE

            //objReader = obj_main.Branch_select(1);
            //Ddlbranchname.DataSource = objReader;
            //Ddlbranchname.DataTextField = "Branch_Name";
            //Ddlbranchname.DataValueField = "Branch_Name";
            //Ddlbranchname.DataBind();
            //Ddlbranchname.Items.Insert(0, "Select User ");
            //Ddlbranchname.Items[0].Value = "0";
            //Ddlbranchname.SelectedIndex = 0;
            //objReader.Close();
            txtdate.Text = DateTime.Today.ToShortDateString();
             ViewState["flag"] = "I";

             if (Request.QueryString["s_no"] != null)
             {


                 objReader = obj_main.Expense_Entry_UPDATE(Request.QueryString["s_no"].ToString());
                 if (objReader.Read())
                 {
                      
                    // Ddlbranchname.SelectedValue = objReader["Branch_Name"].ToString();
                     txtdate.Text = objReader["doj"].ToString();
                     Txtthrough.Text = objReader["through"].ToString();
                      Txtamount.Text = objReader["Product_Cost"].ToString();
                      Txtporopuse.Text = objReader["Product_Name"].ToString();
                      txtremarks.Text = objReader["Remarks"].ToString();
                      txtcheq.Text = objReader["cheque_no"].ToString();
                      txtbankname.Text = objReader["bank_and_branch"].ToString();
                    
                     
                 }
                 ViewState["flag"] = "U";
             }

        }
    }
 
    
  
    protected void radcash_CheckedChanged(object sender, EventArgs e)
    {
        panelemi.Visible = false;

    }
    protected void radCheque_CheckedChanged(object sender, EventArgs e)
    {
        panelemi.Visible = true;
    }
    protected void submit_Click1(object sender, EventArgs e)
    {
     
        obj_main.doj = Convert.ToDateTime(txtdate.Text);
      //  obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();
        obj_main.Product_Name = Txtporopuse.Text;
        obj_main.Product_Cost = Txtamount.Text;
        obj_main.Remarks = txtremarks.Text;
        obj_main.through = Txtthrough.Text;
        obj_main.created_by = Session["user_id"].ToString();
        // obj_main.flag = "I";

        obj_main.bank_and_branch = txtbankname.Text;
        obj_main.cheque_no = txtcheq.Text;
        if (radcash.Checked == true)
        {
            obj_main.mode_of_payment = "cash";
        }
        else if (radCheque.Checked == true)
            obj_main.mode_of_payment = "cheque";
        else
            obj_main.mode_of_payment = "cash";

        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.sno = "0";

            value = obj_main.Expense_Entry_Insert(obj_main);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";
            // obj_main.agent_status = "Inactive";
            obj_main.sno = Request.QueryString["s_no"].ToString();
            value = obj_main.Expense_Entry_Insert(obj_main);
        }




        Response.Redirect("~/Expance/VIEW_EXPANCE_DETAILS.aspx");

    
    }
    protected void reset_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("~/Expance/expense_entry.aspx");
    }
    
}