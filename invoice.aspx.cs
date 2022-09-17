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
public partial class invoice : System.Web.UI.Page
{  
     maincode obj_main = new maincode();
    SqlDataReader objReader;
    string value;
    protected void Page_Load(object sender, EventArgs e)
    {
        clsAccount objAccount = new clsAccount();
        SqlDataReader objReader;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SlickTicket"].ConnectionString);

        SqlDataReader dr = null;

        byte[] bytes;

        string Base64String = string.Empty;

        SqlCommand cmd = new SqlCommand("comp_sett_details_select", con);

        cmd.CommandType = CommandType.StoredProcedure;


        con.Open();

        try
        {

            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {

                dr.Read();

                //lblcity.Text = Convert.ToString(dr["city"]);
                //lblcompname.Text = Convert.ToString(dr["CompName"]);
                //lbladdress.Text = Convert.ToString(dr["comp_address"]);

                if (!string.IsNullOrEmpty(Convert.ToString(dr["Comp_photo"])))
                {

                    bytes = (byte[])dr["Comp_photo"];

                    Base64String = Convert.ToBase64String(bytes, 0, bytes.Length);

                   // imgprvw1.ImageUrl = "data:images/png;base64," + Base64String;

                }


            }
        }
        catch (Exception)
        {


        }
        finally
        {

            dr.Dispose();

            con.Close();

            cmd.Dispose();

            bytes = null;

            Base64String = null;
        }


        if (!IsPostBack)
        {
            objReader = obj_main.sale_view_select_print(Request.QueryString["serial_no"].ToString());
            if (objReader.Read())
            {
                
                lbladd.Text = objReader["address"].ToString();
                lblcusto.Text = objReader["customerid"].ToString();

               // lblAmtWords.Text = objReader["amount_word"].ToString();
                lblarea.Text = objReader["plot_size"].ToString();
               // lblbranchname.Text = objReader["Branch_Name"].ToString();
              //  lblcompanyname.Text = objReader["company"].ToString();
                lbldate.Text = objReader["sale_date"].ToString();
                lblduedate.Text = objReader["emi_date"].ToString();
                lblemail.Text = "Not Available";
                lblemi.Text = objReader["no_of_emi"].ToString();
                lblemiamount.Text = objReader["emi_amount"].ToString();
                lblinvoice.Text = objReader["invoice_no"].ToString();
                lblMobile.Text = objReader["mobile_no"].ToString();
                lblprice.Text = objReader["plot_cost"].ToString();

                lblprice1.Text = objReader["plot_cost"].ToString();
                lbl_rest.Text = objReader["rest_amount"].ToString();

                lblprojectname.Text = objReader["project_name"].ToString();
                lblrate.Text = objReader["rate_per_sq"].ToString();
                lblregistrantName.Text = objReader["registrant_name"].ToString();
                lblbookingamount.Text = objReader["booking_amount"].ToString();
               // lblrecieveamount.Text = objReader["emi_amount"].ToString();
                lblplotno.Text = objReader["plot_no"].ToString();
                lblmonths.Text = objReader["sale_date"].ToString();
              
            }
        }

    }
}