using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class EMI_delete_emi : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    string value;
    clsAccount objAccount = new clsAccount();
 

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SlickTicket"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }

        if (!IsPostBack)
        {
            objReader = obj_main.project_name_dd();
            ddlproject.DataSource = objReader;
            ddlproject.DataTextField = "project_name";
            ddlproject.DataValueField = "project_name";
            ddlproject.DataBind();
            ddlproject.Items.Insert(0, "Select Project");
            ddlproject.Items[0].Value = "0";
            ddlproject.SelectedIndex = 0;
            objReader.Close();

            obj_main.block = txtblock.Text;
            obj_main.plot_no = Txtplotno.Text;
            obj_main.project_name = ddlproject.SelectedValue.ToString();

            grdLead.DataSource = obj_main.Emi_delete_select(obj_main);
            grdLead.DataBind();
        }


    }
    protected void View_Click(object sender, EventArgs e)
    {
        obj_main.block = txtblock.Text;
        obj_main.plot_no = Txtplotno.Text;
        obj_main.project_name = ddlproject.SelectedValue.ToString();

        grdLead.DataSource = obj_main.Emi_delete_select(obj_main);
        grdLead.DataBind();

    }
    protected void grdLead_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)grdLead.Rows[e.RowIndex];

        Label lblserialno = (Label)row.FindControl("lblserialno");
        string sno = lblserialno.Text;
      

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand md = new SqlCommand("Delete from emi_entry_detail where sno='" + sno + "'", con);
        md.ExecuteNonQuery();
        con.Close();

        txtblock.Text = "";
        Txtplotno.Text = "";

        pnlback.Visible = false;

        lblsms.Visible = true;
        lblsms.Text = "You have successfully Deleted a EMI Details";

       // Response.Redirect("~/EMI/delete_emi.aspx");
       




    }
}