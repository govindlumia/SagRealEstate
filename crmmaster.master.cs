using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class crmmaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblusername.Text =  Session["name"].ToString();
        string des = Session["role"].ToString();

        lblusername.Text = Session["name"].ToString();
       // string des = Session["designation"].ToString();

        clsAccount objAccount = new clsAccount();
      //  SqlDataReader objReader;

        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SlickTicket"].ConnectionString);


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

}
