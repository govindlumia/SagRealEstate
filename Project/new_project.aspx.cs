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


public partial class new_project : System.Web.UI.Page
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

     //  new_projects_update_select
        if (!IsPostBack)
        {
            ViewState["flag"] = "I";

            if (Request.QueryString["projectid"] != null)
            {


                objReader = obj_main.new_projects_update_select(Request.QueryString["projectid"].ToString());
                if (objReader.Read())
                {

                    txt_no_of_plot.Text = objReader["no_of_plot"].ToString();
                    txtblng.Text = objReader["Company"].ToString();
                    txtprojeclocation.Text = objReader["project_location"].ToString();
                    txtprojectname.Text = objReader["project_name"].ToString();
                    txtblock.Text = objReader["block"].ToString();
                }
                ViewState["flag"] = "U";
            }
        }
    }
   
    protected void submit_Click(object sender, EventArgs e)
    {
       
        obj_main.project_status = "Active";
        obj_main.project_name = txtprojectname.Text;
        obj_main.project_location = txtprojeclocation.Text;
        obj_main.no_of_plot = txt_no_of_plot.Text;
        obj_main.Company = txtblng.Text;
        obj_main.block = txtblock.Text;
        obj_main.created_by = Session["user_id"].ToString();
       // obj_main.flag = "I";
        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.project_id = "0";
            value = obj_main.new_projects_insert(obj_main);
        }

        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.created_by = Session["user_id"].ToString();
            obj_main.flag = "U";
            obj_main.project_id = Request.QueryString["projectid"].ToString();
            value = obj_main.new_projects_insert(obj_main);
        }

        Response.Redirect("~/Project/update_project_details.aspx");
    }
    
}