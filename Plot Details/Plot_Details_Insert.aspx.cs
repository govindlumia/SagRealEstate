using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Plot_Details_Plot_Details_Insert : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    string values;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }

        lblusername.Text = Session["name"].ToString();
        string des = Session["role"].ToString();

        lblusername.Text = Session["name"].ToString();
        if (!IsPostBack)
        {

            objReader = obj_main.project_name_dd();
            ddlproject.DataSource = objReader;
            ddlproject.DataTextField = "project_name";
            ddlproject.DataValueField = "project_name";
            ddlproject.DataBind();
            ddlproject.Items.Insert(0, "----------Select Project----------");
            ddlproject.Items[0].Value = "0";
            ddlproject.SelectedIndex = 0;
            objReader.Close();

            ViewState["flag"] = "I";

            if (Request.QueryString["serial_no"] != null)
            {


                objReader = obj_main.plot_transfer_select_update(Request.QueryString["serial_no"].ToString());
                if (objReader.Read())
                {
            
                    TXT_CUSTOMERID.Text = objReader["customer_id"].ToString();
                    txt_plotcost.Text = objReader["plot_cost"].ToString();
                    Txtplotsize.Text = objReader["plot_size"].ToString();
                    Txtratesqyrd.Text = objReader["rate_per_sq"].ToString();
                    txtdate.Text = objReader["sale_date"].ToString();
            


                }
                ViewState["flag"] = "U";
            }
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


    protected void Button1_Click(object sender, EventArgs e)
    {

       
        objReader = obj_main.sales_filter(TXT_CUSTOMERID.Text.ToString());
        if (objReader.Read())
        {
            //  project_name,plot_no,block  

            txt_p_block.Text = objReader["block"].ToString();
            txt_p_plot.Text = objReader["plot_no"].ToString();
            txt_p_project.Text = objReader["project_name"].ToString();
            txt_address.Text = objReader["address"].ToString();
            txt_mobile.Text = objReader["mobile_no"].ToString();
            txt_father.Text = objReader["father_name"].ToString();
            txt_customer.Text = objReader["registrant_name"].ToString();
            txt_plotcost.Text = objReader["plot_cost"].ToString();
            Txtplotsize.Text = objReader["plot_size"].ToString();
            Txtratesqyrd.Text = objReader["rate_per_sq"].ToString();
            txtdate.Text = objReader["sale_date"].ToString();
            txttotalpaid.Text = objReader["total_paid"].ToString();
            
        }
      
    }


    
    
    protected void ddl_plotno_SelectedIndexChanged(object sender, EventArgs e)
    {
        objReader = obj_main.plot_transfer_check(ddlproject.SelectedValue.ToString(), Txt_Block.Text, Txt_Plot.Text);
        if (objReader.Read())
        {
            lblMsg.Visible = true;
          
            lblMsg.Text = "Plot NOT Avaliable For Transfer";

            submit.Visible = false;
          
        }
        else
        {
            lblMsg.Visible = false;
            submit.Visible = true;
          
        }
    }
    //protected void ddlproject_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    SqlConnection conn = new SqlConnection("Data Source=184.168.47.17;Initial Catalog=BKR_Dev;uid=BKR_Dev;pwd=BKR_Dev@123");

    //    conn.Open();
    //    SqlCommand cmd = new SqlCommand("select DISTINCT block from plots_details where project_name ='" + ddlproject.SelectedValue + "'", conn);
    //    SqlDataReader dr = cmd.ExecuteReader();

    //    ddl_block.DataSource = dr;

    //    ddl_block.Items.Clear();

    //    ddl_block.Items.Add("--Select Block--");

    //    ddl_block.DataTextField = "block";
    //    ddl_block.DataValueField = "block";
    //    //ddl_agent.DataValueField = "Introducer";

    //    ddl_block.DataBind();
    //    ddl_block.Items.Insert(0, new ListItem("Select Block", "0"));
    //    conn.Close();
    //}
    //protected void ddl_block_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    SqlConnection conn = new SqlConnection("Data Source=184.168.47.17;Initial Catalog=BKR_Dev;uid=BKR_Dev;pwd=BKR_Dev@123");

    //    conn.Open();
    //    SqlCommand cmd = new SqlCommand("select DISTINCT plot_no from plots_details where block ='" + ddl_block.SelectedValue + "'and project_name ='" + ddlproject.SelectedValue + "'", conn);
    //    SqlDataReader dr = cmd.ExecuteReader();

    //    ddl_plotno.DataSource = dr;

    //    ddl_plotno.Items.Clear();

    //    ddl_plotno.Items.Add("--Select Plot--");

    //    ddl_plotno.DataTextField = "plot_no";
    //    ddl_plotno.DataValueField = "plot_no";
    //    //ddl_agent.DataValueField = "Introducer";

    //    ddl_plotno.DataBind();
    //    ddl_plotno.Items.Insert(0, new ListItem("Select Plot", "0"));
    //    conn.Close();
    //}
    protected void submit_Click(object sender, EventArgs e)
    {
       

       // plot_cost,plot_size,rate_per_sq,sale_date,registrant_name,father_name,
       // mobile_no,address,p_project,p_block,p_plot,flag,n_project,n_plot,n_block
       //,customer_id


         obj_main.customer_id = TXT_CUSTOMERID.Text;
         obj_main.plot_cost = txt_plotcost.Text;
        obj_main.plot_size = Txtplotsize.Text;
        obj_main.rate_per_sq=Txtratesqyrd.Text;
        obj_main.sale_date=Convert.ToDateTime(txtdate.Text);
        obj_main.registrant_name=txt_customer.Text;
        obj_main.father_name=txt_father.Text;
        obj_main.mobile_no=txt_mobile.Text;
        obj_main.address=txt_address.Text;
        obj_main.p_project=txt_p_project.Text;
        obj_main.p_block=txt_p_block.Text;
        obj_main.p_plot=txt_p_plot.Text;
        obj_main.n_project=ddlproject.SelectedValue.ToString();
        obj_main.n_block = Txt_Block.Text;

        obj_main.n_plot = Txt_Plot.Text;
        obj_main.total_paid = txttotalpaid.Text;
        
        //obj_main.project_name = ddlproject.SelectedValue.ToString();
        //obj_main.block = ddl_block.SelectedValue.ToString();
        //obj_main.plot_no = ddl_plotno.SelectedValue.ToString();

      
        obj_main.created_by = Session["user_id"].ToString();

        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.s_no = "0";
        obj_main.flag = "I";
        values = obj_main.plot_transfer_insert(obj_main);
       
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";
            obj_main.s_no = Request.QueryString["serial_no"].ToString();
            values = obj_main.plot_transfer_insert(obj_main);
        }

        Response.Redirect("~/Plot Details/plot_transferview.aspx");
    }

    protected void reset_Click(object sender, EventArgs e)
    {
        

    }
    
}