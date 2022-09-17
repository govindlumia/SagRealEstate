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

public partial class Admin_Transport : System.Web.UI.Page
{

    maincode obj_main = new maincode();
    string value;
    SqlDataReader objReader, objReader1, objReader2;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }


        if (!IsPostBack)
        {

            ViewState["flag"] = "I";


            if (Request.QueryString["s_no"] != null)
            {


                objReader = obj_main.transport_update_select(Request.QueryString["s_no"].ToString(), 1);


                if (objReader.Read())
                {
                    txtno.Text = objReader["two_wheelers"].ToString();
                    txtvechile.Text = objReader["two_vehicle_name"].ToString();
                    txtreg.Text = objReader["two_vehicle_reg_no"].ToString();
                    txt4wheelers.Text = objReader["four_no_of_wheelers"].ToString();
                    txt4vechicle.Text = objReader["four_vehicle_name"].ToString();

                    txt4reg.Text = objReader["four_vehicle_reg_no"].ToString();

                 

                }
                ViewState["flag"] = "U";
            }
        }
    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        //@s_no , @two_wheelers, @two_vehicle_name ,  @two_vehicle_reg_no , @four_no_of_wheelers , @four_vehicle_name ,  @four_vehicle_reg_no ,

        obj_main.two_wheelers = txtno.Text;
        obj_main.two_vehicle_name = txtvechile.Text;
        obj_main.two_vehicle_reg_no = txtreg.Text;
        obj_main.four_no_of_wheelers = txt4wheelers.Text;
        obj_main.four_vehicle_name = txt4vechicle.Text;
        obj_main.four_vehicle_reg_no = txt4reg.Text;


        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.s_no = "0";

            value = obj_main.transport_insert(obj_main);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";
            // obj_main.agent_status = "Inactive";
            obj_main.s_no = Request.QueryString["s_no"].ToString();
            value = obj_main.transport_insert(obj_main);
        }

        Response.Redirect("~/Admin/view_transport.aspx");

    }
    protected void reset_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/Transport.aspx");
    }
}