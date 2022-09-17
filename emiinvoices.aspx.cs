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

public partial class emiinvoices : System.Web.UI.Page
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

                  //  imgprvw1.ImageUrl = "data:images/png;base64," + Base64String;

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
            objReader = obj_main.emi_view_select_print(Request.QueryString["serial_no"].ToString());
            if (objReader.Read())
            {
                lblbranchname.Text = objReader["Branch_Name"].ToString(); 
                lbladd.Text = objReader["address"].ToString();

                lblcustomerid.Text = objReader["customerid"].ToString(); ;
                //lblAmtWords.Text = objReader["amount_word"].ToString();
                lblblock.Text = objReader["block"].ToString();
                //lblbranchname.Text = objReader["Branch_Name"].ToString();
                lbldate.Text = objReader["created_on"].ToString();
                lblduedate.Text = objReader["emi_due_date"].ToString();
                lblemail.Text = "Not Available";
                lblemi.Text = objReader["count_emi"].ToString();
                lblemiamoun.Text = objReader["amount"].ToString();
                lblinvoice.Text = objReader["emi_Invoice_no"].ToString();
                lblMobile.Text = objReader["mobile_no"].ToString();
                lblprice.Text = objReader["plot_cost"].ToString();
                lblprice1.Text = objReader["plot_cost"].ToString();
                lbl_rest.Text = objReader["rest_amount"].ToString();

                lblprojectname.Text = objReader["project_name"].ToString();
                lblregistrantName.Text = objReader["registrant_name"].ToString();
                lblemiamount.Text = objReader["amount"].ToString();
                // lblrecieveamount.Text = objReader["emi_amount"].ToString();
                lblplotno.Text = objReader["plot_no"].ToString();
                lblemiamounn.Text = objReader["amount"].ToString();
                lblemimonth.Text = objReader["emi_month"].ToString();

            }
        }
    }
}