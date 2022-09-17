using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Plot_Registration_Plot_Reg_Insert : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    string value;
    double amountunitwise, commisionsqyard, percentageamount, plotarea, p_cost, commisionamount;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }
        lblusername.Text = Session["name"].ToString();
        string des = Session["role"].ToString();

        lblusername.Text = Session["name"].ToString();

        clsAccount objAccount = new clsAccount();
        SqlDataReader objReader;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SlickTicket"].ConnectionString);
        if (!IsPostBack)
        {
            ViewState["flag"] = "I";
            txtdate.Text = DateTime.Today.ToShortDateString();
            txtfinalregistrationdate.Text = DateTime.Today.ToShortDateString();
          //  txtduescollectiondate.Text = DateTime.Today.ToShortDateString();
          //  txtchequeclrdate.Text = DateTime.Today.ToShortDateString();
          //  TxtEmiStartDate.Text = DateTime.Today.ToShortDateString();
            if (Request.QueryString["serial_no"] != null)
            {


                objReader = obj_main.PlotReg_select_update(Request.QueryString["serial_no"].ToString());
                if (objReader.Read())
                {
                    Btn_Search.Visible = false;
                    TxtCollectionAmount.Text = objReader["collection_amt"].ToString();
                    Txt_CustomerId.Text = objReader["CustomerId"].ToString();
                 //   txt_noof_emi.Text = objReader["no_of_emi"].ToString();
                    //txtinterestamount.Text = objReader["interest"].ToString();
                    //txtnoofday.Text = objReader["count_days"].ToString();
                  //  txtfinalregistrationdate.Text = objReader["count_days"].ToString();
                //   ddlemitype.SelectedValue = objReader["emitype"].ToString();
                    //Txtnoemi.Text = objReader["no_of_emi"].ToString();
                    //Txtrestamt.Text = objReader["rest_amount"].ToString();
                    Txtaddress.Text = objReader["address"].ToString();
                    //txtemidueinterest.Text = objReader["emidueinterest"].ToString();

                    //ddlagentname.SelectedValue = objReader["agent_name"].ToString();
                    Txt_ProjectName.Text = objReader["project_name"].ToString();
                    txtblock.Text = objReader["block"].ToString();
                    Txtplotno.Text = objReader["plot_no"].ToString();
                    txtdate.Text = objReader["sale_date"].ToString();
                     txtfinalregistrationdate.Text = objReader["registration_date"].ToString();
                    Txtplotspecification.Text = objReader["specification"].ToString();
                   // Txtplotsize.Text = objReader["plot_size"].ToString();
                    Txtplotarea.Text = objReader["total_plot_area"].ToString();
                   // Txtplccharge.Text = objReader["plc"].ToString();
                    Txtratesqyrd.Text = objReader["rate_per_sq"].ToString();
                   // txtdevfee.Text = objReader["devfee"].ToString();
                    Txtcustomername.Text = objReader["registrant_name"].ToString();
                    ddlco.SelectedItem.Text = objReader["s_o"].ToString();
                    Txtfathername.Text = objReader["father_name"].ToString();
                    Txtmob.Text = objReader["mobile"].ToString();
                    txtpancard.Text = objReader["pancard"].ToString();
                    ddlidproof.SelectedItem.Text = objReader["idproof"].ToString();
                    txtidno.Text = objReader["idno"].ToString();
                    TxtEmailId.Text = objReader["email"].ToString();
                    TxtDocumentNo.Text = objReader["documentno"].ToString();
                    TxtRegistratioFee.Text = objReader["registration_fee"].ToString();
                    Txtplotcost.Text = objReader["plot_cost"].ToString();
                    Txtbookingamt.Text = objReader["total_booking_amt"].ToString();
                 //   txtcollectedbookingamount.Text = objReader["collected_booking_amt"].ToString();
                    //Button1.Visible = false;
                    //txtduesbookingamount.Text = objReader["dues_booking_amt"].ToString();
                    //txtdueinterest.Text = objReader["dues_int_rate"].ToString();
                    //txtduescollectiondate.Text = objReader["dues_collection_date"].ToString();
                    //txtcheq.Text = objReader["chequeno"].ToString();
                    //ddlidproof.SelectedValue = objReader["idproof"].ToString();
                    //ddlco.SelectedValue = objReader["co"].ToString();
                    //ddlco1.SelectedValue = objReader["coo"].ToString();
                 //   txtbranchbank.Text = objReader["bank_branch"].ToString();
                  //  txtchequeclrdate.Text = objReader["chq_clearing_date"].ToString();
                 //   TxtRestAmount.Text = objReader["rest_amount"].ToString();
                   // TxtCollectionAmount.Text = objReader["collected_amount"].ToString();
                    txtremarks.Text = objReader["remarks"].ToString();
                  //  TxtEmiStartDate.Text = objReader["emi_start_date"].ToString();
                  //  TxtEMIAmount.Text = objReader["emi_amount"].ToString();
                    //ddlidproof1.SelectedValue = objReader["idproo"].ToString();
                  //  TxtDuesEMIInterest.Text = objReader["dues_emi_int"].ToString();


                }
                ViewState["flag"] = "U";
            }
        }
    }

   

   
  
   
  
       
protected void  Btn_Search_Click(object sender, EventArgs e)
    {
        objReader = obj_main.PlotReg_Duplicacycheck(Txt_CustomerId.Text);
        if (objReader.Read())
        {
            lblMsg.Visible = true;
            lblMsg.Text = "This Plot already Registered";
            submit.Visible = false;
            return;
        }
        else
        {
            lblMsg.Visible = false;
            objReader = obj_main.salesCust_filter(Txt_CustomerId.Text.ToString());
            if (objReader.Read())
            {
                //TxtCollectionAmount.Text = objReader["collection_amt"].ToString();
               // txt_noof_emi.Text = objReader["no_of_emi"].ToString();
              //  TxtEMIAmount.Text = objReader["emi_amount"].ToString();
                Txt_ProjectName.Text = objReader["project_name"].ToString();
                txtblock.Text = objReader["block"].ToString();
                Txtplotno.Text = objReader["plot_no"].ToString();
                txtdate.Text = objReader["sale_date"].ToString();
                //txtfinalregistrationdate.Text = objReader["project_name"].ToString();
                Txtplotspecification.Text = objReader["specification"].ToString();
              //  Txtplotsize.Text = objReader["plot_size"].ToString();
                Txtplotarea.Text = objReader["total_plot_area"].ToString();

                //txt_plotcost.Text = objReader["plot_cost"].ToString();
//Txtplotsize.Text = objReader["plot_size"].ToString();
                txtdate.Text = objReader["sale_date"].ToString();

              //  txtnoofday.Text = objReader["count_days"].ToString();
               // txtinterestamount.Text = objReader["interest"].ToString();

                Txtfathername.Text = objReader["father_name"].ToString();
                Txtmob.Text = objReader["mobile_no"].ToString();
                Txtaddress.Text = objReader["address"].ToString();
                //TxtEmailId.Text = objReader["Email"].ToString();

           //     Txtplccharge.Text = objReader["plc"].ToString();
                Txtratesqyrd.Text = objReader["rate_per_sq"].ToString();
                Txtcustomername.Text = objReader["registrant_name"].ToString();
                Txtbookingamt.Text = objReader["booking_amount"].ToString();

                //txtpancard.Text = objReader["pancard"].ToString();
               //    txtidno.Text = objReader["idno"].ToString();
              //  txtcollectedbookingamount.Text = objReader["booking_amount"].ToString();
              //  TxtRestAmount.Text = objReader["rest_amount"].ToString();
                // txtbranchbank.Text = objReader["bank_and_branch"].ToString();

              //  txtduesbookingamount.Text = objReader["duesbookingamount"].ToString();
              //  txtdueinterest.Text = objReader["dueinterest"].ToString();
              //  TxtRestAmount.Text = objReader["rest_amount"].ToString();


                //  txtremarks.Text = objReader["Remarks"].ToString();

                //txtfinalregistrationdate.Text = objReader["finalregis_date"].ToString();
               // ddlidproof.SelectedItem.Text = objReader["idproof"].ToString();
                Txtplotcost.Text = objReader["plot_cost"].ToString();

              //  txtdevfee.Text = objReader["devfee"].ToString();
                //ddlidproof.SelectedItem.Text = objReader["idproof"].ToString();
                Txtplotcost.Text = objReader["plot_cost"].ToString();
                //  txtchequeclrdate.Text = objReader["chequeclrdate"].ToString();
                //ddlco.SelectedItem.Text = objReader["co"].ToString();
                submit.Visible = true;
            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Please Check the CustomerID You Have Entered";
                submit.Visible = false;
                return;
            
            }

        }
    }



protected void ImgCompany_Click(object sender, ImageClickEventArgs e)
{
    Response.Redirect("~/home.aspx");
}

protected void submit_Click(object sender, EventArgs e)
{
    
   

      
        obj_main.project_name = Txt_ProjectName.Text;
        obj_main.sale_date = Convert.ToDateTime(txtdate.Text);
       // obj_main.plc = Txtplccharge.Text;
        obj_main.address = Txtaddress.Text;
        obj_main.mobile_no = Txtmob.Text;
        obj_main.father_name = Txtfathername.Text;
        obj_main.registrant_name = Txtcustomername.Text;
        obj_main.Email = TxtEmailId.Text;
        obj_main.Documentno = TxtDocumentNo.Text;
        obj_main.Registration_Fee = TxtRegistratioFee.Text;
        obj_main.collectedamount = TxtCollectionAmount.Text;
        obj_main.Remarks = txtremarks.Text;
        obj_main.registration_date = Convert.ToDateTime(txtfinalregistrationdate.Text);
      //  obj_main.devfee = txtdevfee.Text;
        obj_main.booking_amount = Txtbookingamt.Text;
        obj_main.rest_amount = TxtCollectionAmount.Text;
        obj_main.plot_cost = Txtplotcost.Text;
        obj_main.co = ddlco.SelectedValue.ToString();
        obj_main.coo = ddlco1.SelectedValue.ToString();
        obj_main.plot_no = Txtplotno.Text;
        obj_main.specification = Txtplotspecification.Text;
      //  obj_main.plot_size = Txtplotsize.Text;
        obj_main.total_plot_area = Txtplotarea.Text;
        obj_main.rate_per_sq = Txtratesqyrd.Text;
        obj_main.block = txtblock.Text;
        obj_main.idno = txtidno.Text;
        obj_main.idproof = ddlidproof.SelectedValue.ToString();
        obj_main.CustomerId = Txt_CustomerId.Text;
        obj_main.pancard = txtpancard.Text;
        obj_main.custome = txtcustomer1.Text;
        obj_main.fathe = txtfather1.Text;
        obj_main.mobil = txtmobile1.Text;
        obj_main.addres = txtaddress1.Text;
        obj_main.pancar = txtpancard1.Text;
        obj_main.idproo = ddlidproof1.SelectedValue.ToString();
        obj_main.idn = txtidno1.Text;
        obj_main.Invoice_no = "0";
        obj_main.created_by = Session["user_id"].ToString();

        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.sno = "0";
            obj_main.flag = "I";
            value = obj_main.PlotReg_insert(obj_main);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";

            obj_main.sno = Request.QueryString["serial_no"].ToString();
            value = obj_main.PlotReg_insert(obj_main);
        }

        Response.Redirect("~/Plot Registration/View_Plot_Reg.aspx");
    
}
protected void reset_Click(object sender, EventArgs e)
{
    
        Response.Redirect("~/Plot Registration/View_Plot_Reg.aspx");
    }

}