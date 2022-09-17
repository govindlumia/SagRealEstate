using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net.Mail;
public partial class payment_details : System.Web.UI.Page
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


            obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_main.to_date = Convert.ToDateTime(txttodate.Text);

            GridView1.DataSource = obj_main.agent_payment_SELECT(obj_main);
            GridView1.DataBind();
        }
 }
    protected void View_Click(object sender, EventArgs e)
    {
        obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
        obj_main.to_date = Convert.ToDateTime(txttodate.Text);

        GridView1.DataSource = obj_main.agent_payment_SELECT(obj_main);
        GridView1.DataBind();
    }
}