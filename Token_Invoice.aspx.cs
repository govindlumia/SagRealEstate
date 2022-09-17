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

public partial class Token_Invoice : System.Web.UI.Page
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
               
                //if (!string.IsNullOrEmpty(Convert.ToString(dr["Comp_photo"])))
                //{

                //    bytes = (byte[])dr["Comp_photo"];

                //    Base64String = Convert.ToBase64String(bytes, 0, bytes.Length);

                //    imgprvw1.ImageUrl = "data:images/png;base64," + Base64String;

                //}


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
            objReader = obj_main.token_details_print(Request.QueryString["serial_no"].ToString());
            if (objReader.Read())
            {
                //                s_no,no_of_plots ,block,project_name,plot_no,father_name,mobile_no,,      
                //created_by,mode_of_payment,amount,bank_branch,cheque_no,registrant_name ,           
                //convert(varchar(100),created_on,103)as created_on 
                lbladd.Text = objReader["address"].ToString();
                lbl_agent.Text = objReader["agent_name"].ToString();
                lbl_emp.Text = objReader["employee"].ToString();
                lblAmtWords.Text = objReader["amount_word"].ToString();
                lblarea.Text = objReader["block"].ToString();
                lblbranchname.Text = objReader["Branchname"].ToString();
                lbldate.Text = objReader["created_on"].ToString();
                lblcheck.Text = objReader["cheque_no"].ToString();
                lblpaymentmode.Text = objReader["mode_of_payment"].ToString();
                lblMobile.Text = objReader["mobile_no"].ToString();
                lblbank.Text = objReader["bank_branch"].ToString();
                lblprojectname.Text = objReader["project_name"].ToString();
                lblregistrantName.Text = objReader["registrant_name"].ToString();
                lbltokenamount.Text = objReader["amount"].ToString();
                lblplotno.Text = objReader["plot_no"].ToString();

                lblagdate.Text = objReader["agr_date"].ToString();
                lbltmperiod.Text = objReader["time_period"].ToString();
                lblrate.Text = objReader["rate_per_sq"].ToString();

                lblsize.Text = objReader["plot_size"].ToString();
                lblcity.Text = "FARIDABAD";
                lblcompname.Text = "SAGONI INDIA PRIVATE LIMITED";
                lbladdress.Text = "Armaan Complex,Sector-31";
            }
        }

    }
}