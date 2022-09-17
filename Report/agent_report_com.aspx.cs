using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Agent_agent_report_com : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }
        
        if (!IsPostBack)
        {
            txtfromdate.Text = DateTime.Today.ToShortDateString();
            txttodate.Text = DateTime.Today.ToShortDateString();
            objReader = obj_main.agentsdetails_dd_select(1);
            Ddlagent.DataSource = objReader;
            Ddlagent.DataTextField = "agent_name";
            Ddlagent.DataValueField = "agent_name";
            Ddlagent.DataBind();
            Ddlagent.Items.Insert(0, "Select Agent");
            Ddlagent.Items[0].Value = "0";
            Ddlagent.SelectedIndex = 0;
            objReader.Close();

            obj_main.agent_name = Ddlagent.SelectedValue.ToString();
            obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_main.to_date = Convert.ToDateTime(txttodate.Text);
            grdLead.DataSource = obj_main.AGENT_wise_sale_report(obj_main);
            grdLead.DataBind();
        }

    }
  
    protected void ImageButton1_Click1(object sender, EventArgs e)
    {

    }
}