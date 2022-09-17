using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class block_report : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            txtfromdate.Text = DateTime.Today.ToShortDateString();
            txttodate.Text = DateTime.Today.ToShortDateString();

            obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_main.to_date = Convert.ToDateTime(txttodate.Text);
            grdLead.DataSource = obj_main.plots_details_Report(obj_main);
            grdLead.DataBind();
        }
    }

   

    protected void submit_Click(object sender, EventArgs e)
    {
          
        obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
        obj_main.to_date = Convert.ToDateTime(txttodate.Text);

        grdLead.DataSource = obj_main.plots_details_Report(obj_main);
        grdLead.DataBind();
    
    }
}