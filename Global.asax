<%@ Application Language="C#" %>
<%@ Import Namespace="System.Timers" %>
<script runat="server">
    clsUser objuser = new clsUser();
    string emp_id;
    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

        System.Timers.Timer myTimer = new System.Timers.Timer();
        // Set the Interval to 5 seconds (5000 milliseconds).
        myTimer.Interval = 30000000;
        myTimer.AutoReset = true;
        myTimer.Elapsed += new ElapsedEventHandler(myTimer_Elapsed);

        myTimer.Enabled = true;
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown
       // objuser.crmuserLogin_insert(Session["user_id"].ToString(), "U", Session["sessionId"].ToString(), "");

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        //try
        //{
        //    //mail objuser = new mail();
        //   // Session["emp_id"] = objReader["emp_id"].ToString();
        //    objuser.crmuserLogin_insert(Session["emp_code"].ToString(), Session["emp_id"].ToString(), "0", "0", 'U');
        //    //Session["sessionId"] = null;
        //}
        //catch (Exception ex)
        //{

        //    //lblMsg.Text = "Error occured while sending your message." + ex.Message;
        //    // Response.Redirect("brouseCustomer.aspx");
        //}


    }
    public void myTimer_Elapsed(object source, System.Timers.ElapsedEventArgs e)
    {
       // mail objScheduleMail = new mail();
      //  string Request = objScheduleMail.scheduleEmailForNewStatus(172800);
        //string mailMsg = "Request No " + Request + " is open since 48 hours.";


        //string RequestForTech = objScheduleMail.CRMscheduleEmailForNotAssignTech(3600);
        //string mailMsgForTech = "Request No " + RequestForTech + " is not assigne for any technitian.";
        //if (RequestForTech != "0")
        //{
        //    //objScheduleMail.SendScheduleMailForTech(mailMsgForTech, "jamal.ahmed@etechies.in,puran.singh@etechies.in,jayant.jha@etechies.in", "siddharth@etechies.in");

        //    objScheduleMail.CRMscheduleEmailUpdateForTech(RequestForTech);
        //}

    }
       
</script>
