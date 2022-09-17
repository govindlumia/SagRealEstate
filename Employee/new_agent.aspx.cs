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

public partial class new_agent : System.Web.UI.Page
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
            txtdate.Text = DateTime.Today.ToShortDateString();
           
                //objReader = obj_main.Branch_select(1);
                //Ddlbranchname.DataSource = objReader;
                //Ddlbranchname.DataTextField = "Branch_Name";
                //Ddlbranchname.DataValueField = "Branch_Name";
                //Ddlbranchname.DataBind();
                //Ddlbranchname.Items.Insert(0, "Select User ");
                //Ddlbranchname.Items[0].Value = "0";
                //Ddlbranchname.SelectedIndex = 0;
                //objReader.Close();

            ViewState["flag"] = "I";

            if (Request.QueryString["agentid"] != null)
            {


                objReader = obj_main.agent_details_select_update(Request.QueryString["agentid"].ToString(), 1);
                if (objReader.Read())
                {


                   // Ddlbranchname.SelectedValue = objReader["Branch_Name"].ToString();
                    txtdate.Text = objReader["doj"].ToString();
                    Txtemplyname.Text = objReader["agent_name"].ToString();
                    Txtmob.Text = objReader["mobile_no"].ToString();
                    Txtagentcommision.Text = objReader["commision"].ToString();
                    Txtaddress.Text = objReader["address"].ToString();

                    txtagentsalary.Text = objReader["agent_sal"].ToString();


                    
                    

        }
                ViewState["flag"] = "U";
     }
  }
 }
   
   
    protected void submit_Click(object sender, EventArgs e)
    {
        
        //obj_main.Branch_Name = Ddlbranchname.SelectedValue.ToString();
        obj_main.agent_name = Txtemplyname.Text;
        obj_main.agent_sal = txtagentsalary.Text;
        obj_main.mobile_no = Txtmob.Text;
        obj_main.doj = Convert.ToDateTime(txtdate.Text);
        obj_main.address = Txtaddress.Text;
        obj_main.commision = Txtagentcommision.Text;
       // objuser.created_by = Session["user_id"].ToString();
        obj_main.agent_status = "ACTIVE";
        obj_main.created_by = Session["user_id"].ToString();
       // obj_main.flag = "I";
        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.agent_id = "0";
          
            value = obj_main.agentdetail_insert(obj_main);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";
           // obj_main.agent_status = "Inactive";
            obj_main.agent_id = Request.QueryString["agentid"].ToString();
            value = obj_main.agentdetail_insert(obj_main);
        }

        Response.Redirect("~/Employee/show_agent_details.aspx");

        
    
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Employee/new_agent.aspx");
    }
}