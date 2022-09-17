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

public partial class Admin_asset : System.Web.UI.Page
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


                objReader = obj_main.company_assets_update_select(Request.QueryString["s_no"].ToString(), 1);

             
                if (objReader.Read())
                {
                    txtcomp.Text = objReader["computers"].ToString();
                   txtlap.Text = objReader["laptops"].ToString();
                    txtprojector.Text = objReader["projectors"].ToString();
                    txttab.Text = objReader["Tablets"].ToString();
                    txtcellphone.Text = objReader["Cell_Phones"].ToString();

                    txtlandline.Text = objReader["Landline_Phones"].ToString();

                    txtcalcu.Text = objReader["Calculators"].ToString();
                      txtchairs.Text = objReader["Chairs"].ToString();
                      txttable.Text = objReader["Tables"].ToString();
                      txtalmari.Text = objReader["Almari"].ToString();
                      txtteapoy.Text = objReader["Teapoy"].ToString();
                     txtcomputertab.Text = objReader["Computer_Table"].ToString();

                     txtno.Text = objReader["two_wheelers"].ToString();
                     txtvechile.Text = objReader["two_vehicle_name"].ToString();
                     txtreg.Text = objReader["two_vehicle_reg_no"].ToString();
                     txt4wheelers.Text = objReader["four_no_of_wheelers"].ToString();
                     txt4vechicle.Text = objReader["four_vehicle_name"].ToString();
                     txt4reg.Text = objReader["four_vehicle_reg_no"].ToString();
                     txt_statnory.Text = objReader["stationery_items"].ToString();
                }
                ViewState["flag"] = "U";
            }
        }
    }
 
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        obj_main.computers = txtcomp.Text;
        obj_main.laptops = txtlap.Text;
        obj_main.projectors = txtprojector.Text;
        obj_main.Tablets = txttab.Text;
        obj_main.Cell_Phones = txtcellphone.Text;
        obj_main.Landline_Phones = txtlandline.Text;
        obj_main.Calculators = txtcalcu.Text;
        obj_main.Chairs = txtchairs.Text;
        obj_main.Tables = txttable.Text;
        obj_main.Almari = txtalmari.Text;
        obj_main.Teapoy = txtteapoy.Text;
        obj_main.Computer_Table = txtcomputertab.Text;

        obj_main.two_wheelers = txtno.Text;
        obj_main.two_vehicle_name = txtvechile.Text;
        obj_main.two_vehicle_reg_no = txtreg.Text;
        obj_main.four_no_of_wheelers = txt4wheelers.Text;
        obj_main.four_vehicle_name = txt4vechicle.Text;
        obj_main.four_vehicle_reg_no = txt4reg.Text;
        obj_main.stationery_items = txt_statnory.Text;
       
        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.s_no = "0";

            value = obj_main.company_assets_insert(obj_main);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";
            // obj_main.agent_status = "Inactive";
            obj_main.s_no = Request.QueryString["s_no"].ToString();
            value = obj_main.company_assets_insert(obj_main);
        }

        Response.Redirect("~/Admin/view_asset.aspx");

    }
    protected void reset_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/asset.aspx");
    }
}