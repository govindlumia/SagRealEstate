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

public partial class Expance_delete_expense : System.Web.UI.Page
{
    clsSales objsales = new clsSales();
    clsUser objuser = new clsUser();
    maincode obj_main = new maincode();
    string value;

    SqlDataReader objReader, objReader1, objReader2;
    string password, empcode, ip_address, data;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }

        if (!IsPostBack)
        {
            txtfromdate.Text = DateTime.Today.ToShortDateString();
            txttodate.Text = DateTime.Today.ToShortDateString();

            //objReader = obj_main.Branch_select(1);
            //Ddlbranchname.DataSource = objReader;
            //Ddlbranchname.DataTextField = "Branch_Name";
            //Ddlbranchname.DataValueField = "Branch_Name";
            //Ddlbranchname.DataBind();
            //Ddlbranchname.Items.Insert(0, "Select User ");
            //Ddlbranchname.Items[0].Value = "0";
            //Ddlbranchname.SelectedIndex = 0;
            //objReader.Close();


        }
    }
    protected void View_Click(object sender, EventArgs e)
    {
        obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
        obj_main.to_date = Convert.ToDateTime(txttodate.Text);


      //  obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();
        GridView1.DataSource = obj_main.Expense_Entry_SELECT_delete(obj_main);
        GridView1.DataBind();
        if (GridView1.Rows.Count <= 0)
        {
            lblMsg.Visible = false;
            lblsms.Visible = false;
            pnlrepairinvoice.Visible = false;

            paneldeleteall.Visible = true;
            pnlback.Visible = false;

            obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_main.to_date = Convert.ToDateTime(txttodate.Text);
           // obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();
            GridView1.DataSource = obj_main.Expense_Entry_SELECT_delete(obj_main);
            GridView1.DataBind();
        }

        else 
        {
            obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_main.to_date = Convert.ToDateTime(txttodate.Text);
           // obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();
            GridView1.DataSource = obj_main.Expense_Entry_SELECT_delete(obj_main);
            GridView1.DataBind();

            lblMsg.Visible = true;
            pnlrepairinvoice.Visible = true;

            paneldeleteall.Visible = false;

            lblMsg.Text = "Are You Sure to Delete the Expances " + "<br />" + "If Yes.. Then Checked the Box and Press Delete.";

        }
       

    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
        obj_main.to_date = Convert.ToDateTime(txttodate.Text);
       
       //Expense_Entry_Delete
       // obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();
       value = obj_main.Expense_Entry_Delete(obj_main);
        lblMsg.Visible = false;
        pnlrepairinvoice.Visible = false;
        paneldeleteall.Visible = false;

        pnlback.Visible = true;
        lblsms.Visible = true;
        panelgrid.Visible = false;
        lblsms.Text = "You have Successfully Delete the Expances..";

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        lblMsg.Visible = false;
         lblsms.Visible = false;
        pnlrepairinvoice.Visible = false;

        paneldeleteall.Visible = false;
        pnlback.Visible = false;
        Response.Redirect("~/Expance/delete_expense.aspx");
       

    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        pnlrepairinvoice.Visible = false;
        lblMsg.Visible = false;
        lblsms.Visible = false;
        paneldeleteall.Visible = false;
        pnlback.Visible = false;
        Response.Redirect("~/Expance/delete_expense.aspx");
        
    }
}