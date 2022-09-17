<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sale_insert.aspx.cs" Inherits="Sale_sale_insert" Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
     
   

    <link href="http://fonts.googleapis.com/css?family=Armata" rel='stylesheet' type='text/css'>
    
    <title>SAGONI REALESTATE - HelpDesk </title>  
      <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
     <link href="../css/drop.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/dropdon.js" type="text/javascript"></script>
   <link rel="../stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
   <script language="javascript" type="text/javascript">

       function Add() {
           var a, b, c, d;
           a = parseFloat(document.getElementById("Txtplccharge").value);

           if (isNaN(a) == true) {
               a = 0;
           }
           var b = parseFloat(document.getElementById("Txtplotarea").value);
           if (isNaN(b) == true) {
               b = 0;
           }
           var c = parseFloat(document.getElementById("Txtratesqyrd").value);
           if (isNaN(c) == true) {
               c = 0;
           }
           var d = parseFloat(document.getElementById("txtdiscount").value);
           if (isNaN(d) == true) {
               d = 0;
           }

           var mNm = ((parseFloat(b)) * ((parseFloat(a)) + ((parseFloat(c)) - (parseFloat(d)))));
           var xd = mNm.toFixed(2);
           var xFd = mNm.toFixed(2);
           var dw = mNm.toFixed(2);
           var we = mNm.toFixed(2);

           document.getElementById("txtplotcost1").value =xd;
           document.getElementById("Txtplotcost").value = xFd;
           document.getElementById("txtplotcost2").value = dw;
           document.getElementById("Txtplotcost").value = we;
           
       }</script>

  <script language="javascript" type="text/javascript">
      //  Txtbookingamt Txtnoemi Txtrestamt Txtemiamt
      function Addd() {
          var ab, cd, ef, gh;
          var ab = parseFloat(document.getElementById("txtplotcost1").value);

          if (isNaN(ab) == true) {
              ab = 0;
          }
          var cd = parseFloat(document.getElementById("Txtbookingamt").value);
          if (isNaN(cd) == true) {
              cd = 0;
          }
          var ef = parseFloat(document.getElementById("Txtnoemi").value);
          if (isNaN(ef) == true) {
              ef = 0;
          }
         
          var mNm = ((parseFloat(ab)) - (parseFloat(cd)));
          var mNd = (((parseFloat(ab)) - (parseFloat(cd))) / (parseFloat(ef)));

          var xxd = mNm.toFixed(2);
          var dxw = mNd.toFixed(2);

          document.getElementById("Txtrestamt").value = xxd;
          document.getElementById("Txtemiamt").value = dxw;

      }
      </script>
   

     <style type="text/css">
         .style1
         {
             color: #545454;
             white-space: nowrap;
             width: 20%;
             border-left: 1px solid #DEDEDE;
             border-right: 1px solid #DEDEDE;
             border-bottom: 1px solid #dedede;
             padding: 7px;
             background: #F7F7F7 url('../css/images/testsidebar.jpg') repeat-y right center;
         }
         .style2
         {
             width: 30%;
             border-left: 1px solid #dedede;
             border-right: 1px solid #dedede;
             border-bottom: 1px solid #dedede;
             padding: 7px;
         }
     </style>

   

</head>
<body  style="margin:0px 0px 0px 0px">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" ScriptMode="Release">
 
        </asp:ScriptManager>
        <div id="wrapper">

<div style="width: 100%; background-color: rgb(234, 231, 227);">
   
      <table style="  width:100%">
      <tbody><tr>
      <td style="width:30%; text-align:left;font-size: 21px;color: rgb(39, 39, 39); " valign="middle">

      
<div class="logo2_img"></div>
   
   
    
      </td>
     
     

     <td class="width1_left_td">
  
     <div class="heade_nav">
    
     <ul>
        <li>  <a href="">Subscription </a></li>
       
     </ul>
     </div>
       

    <div class="dropdown1">

	<a id="" class="account1">
	<span class="help1">Help</span>
	</a>
	<div class="submenu1" style="display: none; ">
   
	  <ul class="root1">
        <li class="root_line_hight">
	        <a href="#"><div class="header_icon"></div> www.sagoni.com </a>
        </li>

         <li class="root_line_hight">
	        <a href="#"><div class="header_icon1"></div>Sagoni.Indi</a>
        </li>

         <li class="root_line_hight">
	        <a href="#"><div class="header_icon2"></div>+91- 9717206653 | 8800118712</a>
        </li>
	    
	  
	  </ul>
	</div>
	</div></td>
     
     <td class="width1_right_td">
    <div class="dropdown">
	<a id="" class="account">
	<span class="logo_icon_img"></span>
	</a>
	<div class="submenu" style="display: none; ">
   
	  <ul class="root">
<li>
	    <div class="login_div_left"></div>

        <div class="login_div_right"> <p> <span id="ctl00_lblusername"> <asp:Label ID="lblusername" CssClass="user_name" runat="server" Text="" Font-Bold="true"></asp:Label></span></p> <a href="../changePassword.aspx"> Change Password </a> 
            
       <asp:Button ID="Button2" CssClass="login_botton_1" runat="server" Text="LOG OUT" onclick="LinkButton1_Click" />
        </div>

	    </li>

	    
	  
	  </ul>
	</div>
	</div></td>
     </tr>
   


        <tr>
     </tr></tbody>
     </table>
     <table style="background-color: rgb(90, 90, 90);" width="100%">


     <tbody>
     <tr>
     <td style="width:30%; text-align:left; font-family:Arial, helvetica Sans-Serif;  color:maroon; padding-left:10px; font-weight:bold" valign="middle">
  <a style="font-size:17px; color:#fff">Welcome</a>&nbsp;&nbsp;
        <span id="Span1" style="color:White;font-weight:bold;">SAGONI INDIA PRIVATE LIMITED</span>
       
 </td>
     <td  style=" text-align:right; padding-right:23px" valign="middle">
      <input name="ctl00$txtsearch" onchange="javascript:setTimeout('__doPostBack(\'ctl00$txtsearch\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ctl00_txtsearch" class="search_textbox" placeholder="Search" type="text">
     </td>
    
     
     </tr></tbody></table>

  
      
   
    
 </div>
 <center>

 


 <table width="100%" cellpadding="0" cellspacing="0" style=" height:30px">
    <tr>
    <td colspan="2"></td>
    </tr>
    <tr>
    <td class="bg_color2" valign="top" style="width:12%; ">
    <ul id="menu-v">
    <li><asp:HyperLink ID="Hypl_branch" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">CREATE USER LOGIN</asp:HyperLink>
   
        <ul class="sub">
         <li><asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl="~/Branch/generate_branch.aspx">Create User</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink28" runat="server" NavigateUrl="~/Branch/Show_Branch_Login_Details.aspx">View User Details</asp:HyperLink></li>
        <%-- <li><asp:HyperLink ID="HyperLink29" runat="server" NavigateUrl="Branch/Update_branch_details.aspx">Update User Details</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink30" runat="server" NavigateUrl="Branch/delete_branch.aspx">Delete User Details</asp:HyperLink></li>--%>
        
        
        </ul>
    </li>
    <li><asp:HyperLink ID="hypl_employee" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">EMPLOYEE</asp:HyperLink>
   
        <ul class="sub">
         <%--<li><asp:HyperLink ID="HyperLink54" runat="server" NavigateUrl="Attendance.aspx">Attandance</asp:HyperLink></li>
          <li><asp:HyperLink ID="HyperLink55" runat="server" NavigateUrl="view_daily_attendance.aspx"> daily Attandance</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink56" runat="server" NavigateUrl="Monthly_attendance.aspx"> Monthly Attandance</asp:HyperLink></li>
        --%>
         <li><asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/Employee/new_agent.aspx">Add New Employee</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/Employee/show_agent_details.aspx">View Employee Details</asp:HyperLink></li>
     <%--    <li><asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="Employee/show_agent_details.aspx">Update Employee Details</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink24" runat="server" NavigateUrl="Employee/delete_agent.aspx">Delete Employee Details</asp:HyperLink></li>--%>
         <%--<li><asp:HyperLink ID="HyperLink25" runat="server" NavigateUrl="Employee/agent_attendance.aspx">Insert Employee Attendance</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="Employee/Attendance_show_details.aspx">View Employee Attendance</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink42" runat="server" NavigateUrl="Employee/agent_salary.aspx">Employee Salary</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink52" runat="server" NavigateUrl="Employee/show_agent_salary.aspx">View Employee Salary</asp:HyperLink></li>
         --%>
        </ul>
    </li>
    <li><asp:HyperLink ID="hypl_agent" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">AGENT</asp:HyperLink>
   
        <ul class="sub">
         <li><asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Agent/add_agent_com.aspx">Add New Agent</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/Agent/view_agent_com.aspx">View Agent Details</asp:HyperLink></li>
 <%--        <li><asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="Agent/delete_agent_com.aspx">Delete Agent Details</asp:HyperLink></li>--%>

        </ul>
    </li>
    <li><asp:HyperLink ID="hypl_projects" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">PROJECT</asp:HyperLink>
   
        <ul class="sub">
      <li><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Project/new_project.aspx">Add New Project</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Project/update_project_details.aspx">View Project Details</asp:HyperLink></li>
<%--      <li><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="Project/update_project_details.aspx">Update Project Details</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="Project/delete_project.aspx">Delete Project Details</asp:HyperLink></li>--%>
   
        </ul>
    </li>
     <li><asp:HyperLink ID="hypl_plot" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">PLOT</asp:HyperLink>
   
        <ul class="sub">
        <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Plot/add_plot_details.aspx">Add Plot Details</asp:HyperLink></li>
    <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Plot/update_plot_details.aspx">View Plot Details</asp:HyperLink></li>
     <li><asp:HyperLink ID="HyperLink68" runat="server" NavigateUrl="~/Plot/plot_status.aspx">Plot Status</asp:HyperLink></li>
  <%--  <li><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="Plot/update_plot_details.aspx">Update Plot Details</asp:HyperLink></li>
    <li><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="Plot/delete_plot_deatils.aspx">Delete Plot Details</asp:HyperLink></li>--%>
    
           
        </ul>
    </li>
    <li><asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">TOKEN</asp:HyperLink>
     <ul class="sub">
        
     <li><asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Sale/token_Form.aspx">New Token Insert</asp:HyperLink></li>
     <li><asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/Sale/show_token_details.aspx">View Token Details</asp:HyperLink></li>
    </ul>
    </li>
     <li><asp:HyperLink ID="hypl_sales" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">SALE</asp:HyperLink>
     <ul class="sub">
     <li><asp:HyperLink ID="hyplmy_transaction" runat="server" NavigateUrl="~/Sale/sale_insert.aspx">New Sale Insert</asp:HyperLink></li>
     <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Sale/sale_detail_view.aspx">View Sale Details</asp:HyperLink></li>
<%--     <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Sale/update_sale_details.aspx">Update Sale Details</asp:HyperLink></li>--%>
     <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Sale/booking_cancel.aspx">Cancel Sale Details</asp:HyperLink></li>
    </ul>
    </li>

     <li><asp:HyperLink ID="hypl_emi" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">EMI</asp:HyperLink>
        <ul class="sub">
        <li><asp:HyperLink ID="HyperLink31" runat="server" NavigateUrl="~/EMI/emi_entry.aspx">New EMI Insert</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink32" runat="server" NavigateUrl="~/EMI/view_emi_detail.aspx">View EMI Details</asp:HyperLink></li>
              <li><asp:HyperLink ID="HyperLink45" runat="server" NavigateUrl="~/EMI/emi_reminder.aspx">EMI Reminder</asp:HyperLink></li>
       <%-- <li><asp:HyperLink ID="HyperLink33" runat="server" NavigateUrl="EMI/update_emi_details.aspx">Update EMI Details</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink34" runat="server" NavigateUrl="EMI/delete_emi.aspx">Delete EMI Details</asp:HyperLink></li>--%>
          
        </ul>
    </li>
     <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">PLOT TRANSFER</asp:HyperLink>
        <ul class="sub">
        <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Plot Details/Plot_Details_Insert.aspx">Plot Transfer Insert</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Plot Details/plot_transferview.aspx">View Transfer Details</asp:HyperLink></li>
                </ul>
        
    </li>
    <li><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">PLOT REGISTRY</asp:HyperLink>
        <ul class="sub">
        <li><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Plot Registration/Plot_Reg_Insert.aspx">Plot Registry Insert</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Plot Registration/View_Plot_Reg.aspx">View Registry Details</asp:HyperLink></li>
                </ul>
        
    </li>
       
    <li><asp:HyperLink ID="hypl_expenses" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">EXPENSE</asp:HyperLink>
        <ul class="sub">
        <li><asp:HyperLink ID="HyperLink35" runat="server" NavigateUrl="~/Expance/expense_entry.aspx">New Expense Insert</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink36" runat="server" NavigateUrl="~/Expance/VIEW_EXPANCE_DETAILS.aspx">View Expense Details</asp:HyperLink></li>
<%--        <li><asp:HyperLink ID="HyperLink37" runat="server" NavigateUrl="Expance/VIEW_EXPANCE_DETAILS.aspx">Update Expense Details</asp:HyperLink></li>
--%>        <%--<li><asp:HyperLink ID="HyperLink38" runat="server" NavigateUrl="Expance/delete_expense.aspx">Cancel Expense Details</asp:HyperLink></li>--%>
   
        </ul>
    </li>

  <li><asp:HyperLink ID="hypl_payment" runat="server" NavigateUrl="~/Payment/payment.aspx" CssClass="arrow">PAYMENT</asp:HyperLink>
        <ul class="sub">
        <li><asp:HyperLink ID="HyperLink39" runat="server" NavigateUrl="~/Payment/payment.aspx">Employee Payment</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/Payment/Agentpayment.aspx"> Agent Payment</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink40" runat="server" NavigateUrl="~/Payment/payment_details.aspx">View Payment</asp:HyperLink></li>
           <li><asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="~/Payment/AgentpaymentDetails.aspx">View Agent Payment</asp:HyperLink></li>
       </ul>
    </li>
    
    <%--<li><asp:HyperLink ID="hypl_dayrep" runat="server" NavigateUrl="home.aspx" CssClass="arrow">DAY REPORT</asp:HyperLink>
        <ul class="sub">
        <li><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="Day_Report/daily_calling_report_entry.aspx">Day Calling Entry </asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="Day_Report/day_finance_report_entry.aspx">Day Finance Entry</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="Day_Report/visitor_entry.aspx">Visitor Entry</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink23" runat="server" NavigateUrl="Day_Report/day_calling_report.aspx">Day Calling Report</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="Day_Report/day_finance_report.aspx">Day Finance Report</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink41" runat="server" NavigateUrl="Day_Report/visitor_report.aspx">Visitor Report</asp:HyperLink></li>
        </ul>
    </li>--%>
     <%--<li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="home.aspx" CssClass="arrow">ATTENDANCE</asp:HyperLink>
   
        <ul class="sub">
         <li><asp:HyperLink ID="HyperLink54" runat="server" NavigateUrl="Admin/Attendance.aspx">Attendance</asp:HyperLink></li>
          <li><asp:HyperLink ID="HyperLink55" runat="server" NavigateUrl="Admin/view_daily_attendance.aspx"> View Daily Attendance</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink56" runat="server" NavigateUrl="Admin/Monthly_attendance.aspx"> View Monthly Attendance</asp:HyperLink></li>
        
        </ul>
    </li>--%>
   <%-- <li><asp:HyperLink ID="HyperLink25" runat="server" NavigateUrl="home.aspx" CssClass="arrow">ADMIN</asp:HyperLink>
   
        <ul class="sub">
         <li><asp:HyperLink ID="HyperLink42" runat="server" NavigateUrl="Admin/asset.aspx">Insert Asset Details</asp:HyperLink></li>
          <li><asp:HyperLink ID="HyperLink52" runat="server" NavigateUrl="Admin/view_asset.aspx"> View Asset Details</asp:HyperLink></li>--%>
        <%-- <li><asp:HyperLink ID="HyperLink65" runat="server" NavigateUrl="Admin/Transport.aspx">Insert Transport Details</asp:HyperLink></li>
          <li><asp:HyperLink ID="HyperLink66" runat="server" NavigateUrl="Admin/view_transport.aspx"> View Transport Details</asp:HyperLink></li>
        --%>
       <%-- </ul>
    </li>--%>
     <li><asp:HyperLink ID="hypl_report" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">REPORT</asp:HyperLink>
        <ul class="sub">
         <li><asp:HyperLink ID="HyperLink53" runat="server" NavigateUrl="~/Report/Laser_Report.aspx">Ledger Report</asp:HyperLink></li>
       
        <li><asp:HyperLink ID="HyperLink43" runat="server" NavigateUrl="~/Report/project_report.aspx">Project Report</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink44" runat="server" NavigateUrl="~/Report/block_report.aspx">Plot Details Report</asp:HyperLink></li>
       <%-- <li><asp:HyperLink ID="HyperLink45" runat="server" NavigateUrl="Report/branch_sales_report.aspx">Branch Sales Report</asp:HyperLink></li>--%>
        <li><asp:HyperLink ID="HyperLink46" runat="server" NavigateUrl="~/Report/sales_report.aspx">Sales Report</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink47" runat="server" NavigateUrl="~/Report/employee_sales_report.aspx">Employee Sales Report</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink48" runat="server" NavigateUrl="~/Report/agent_report_com.aspx">Agent Sales Report</asp:HyperLink></li>

   
        </ul>
    </li>
<%--    <li><asp:HyperLink ID="hypl_company_settings" runat="server" NavigateUrl="CompSetting.aspx">COMPANY SETTINGS</asp:HyperLink></li>
--%>     <%--<li><asp:HyperLink ID="HyperLink57" runat="server" NavigateUrl="#" CssClass="arrow">EMPLOYEE</asp:HyperLink>
   
        <ul class="sub">
         <li><asp:HyperLink ID="HyperLink58" runat="server" NavigateUrl="Admin/Attendance.aspx">Attandance</asp:HyperLink></li>
          <li><asp:HyperLink ID="HyperLink59" runat="server" NavigateUrl="Admin/view_daily_attendance.aspx"> Daily Attandance</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink60" runat="server" NavigateUrl="Admin/Monthly_attendance.aspx"> Monthly Attandance</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink61" runat="server" NavigateUrl="Admin/asset.aspx"> Company Asset Insert</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink62" runat="server" NavigateUrl="Admin/view_asset.aspx"> View Company Asset</asp:HyperLink></li>
                <li><asp:HyperLink ID="HyperLink63" runat="server" NavigateUrl="Admin/asset.aspx">  Transport Detail Insert</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink64" runat="server" NavigateUrl="Admin/view_asset.aspx">  Transport Detail View</asp:HyperLink></li>
         
        </ul>
    </li>--%>
    <%--    <li><asp:HyperLink ID="HyperLink50" runat="server" NavigateUrl="home.aspx">PRIVACY POLICY</asp:HyperLink></li>
--%>    <li><asp:HyperLink ID="HyperLink51" runat="server" Target="_blank" NavigateUrl="http://www.sagoni.com/sagoni_help.aspx">HELP</asp:HyperLink></li>
   
</ul>
    </td>
    <td valign="top" style="width:90%;">
    <center>
  <div class="detailedViewHeader">
  <p class="lvtHeaderText">New Sale Entry</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:100%;">
<table width="98%" cellpadding="0" cellspacing="0" class="big" >
  
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; text-align:center">
   Enter Booking Details 
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabeltop">Project Name : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="ddlselectproject" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd"  CssClass="dropdown">
    
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true" InitialValue="0"
                            ControlToValidate="ddlselectproject" Display="Dynamic" ErrorMessage="Enter Project Name"></asp:RequiredFieldValidator>
    
   </td>
  <td class="dvtCellLabel"> Block:
    </td>
  <td  valign="middle" class="cellInfo1">
      <asp:TextBox ID="txtblock" runat="server"  CssClass="textbox"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatr1" runat="server" SetFocusOnError="true" 
                            ControlToValidate="txtblock" Display="Dynamic" ErrorMessage="Enter Block Name"></asp:RequiredFieldValidator>  
    </td>
  
 </tr>
 <tr> 
  <%--<td class="dvtCellLabel"> Block:
    </td>
  <td  valign="middle" class="cellInfo1">
      <asp:TextBox ID="txtblock" runat="server"  CssClass="textbox"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatr1" runat="server" SetFocusOnError="true" 
                            ControlToValidate="txtblock" Display="Dynamic" ErrorMessage="Enter Block Name"></asp:RequiredFieldValidator>  
    </td>--%>
  <td valign="middle" class="style1">Plot No. :</td>
   <td valign="middle" class="style2">
   <asp:TextBox ID="Txtplotno" runat="server" CssClass="textbox"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" SetFocusOnError="true" 
                            ControlToValidate="Txtplotno" Display="Dynamic" ErrorMessage="Enter Plot No"></asp:RequiredFieldValidator>
    
     
       
       </td>

      <td class="cellInfo1" colspan="2"><asp:Label ID="lblMsg" ForeColor="red" runat ="server" Visible ="false"></asp:Label></td>
  </tr>
  <tr>
  
  <td colspan="4" class="dvtCellLabel" style="text-align:center; padding-bottom:5px; padding-top:5px">
   <asp:Button ID="Button1" CssClass="submit_botton2" runat="server" Text="Submit" 
           CausesValidation="False" onclick="Button1_Click" Width="84px" />  

           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  

           
  </td>
  
  </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel">Reffered By : </td>
   <td valign="middle" class="cellInfo1"> 
      
   <asp:RadioButton 
           runat="server" 
           ID="RBTEMP" 
           Text="EMPLOYEE" 
           GroupName="CASE" 
           oncheckedchanged="RBTEMP_CheckedChanged1"
           AutoPostBack="True"  />

           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
   <asp:RadioButton 
           runat="server" 
           ID="RBTAGENT" 
           Text="AGENT" 
           GroupName="CASE" 
           oncheckedchanged="RBTAGENT_CheckedChanged"
           AutoPostBack="True" /></td>
  
   <td class="cellInfo1" colspan="2"></td>
   
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel" >Agent Name : </td>
   <td valign="middle" class="cellInfo1" >
   <asp:DropDownList ID="ddlagentname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd"  CssClass="dropdown">
   </asp:DropDownList>
  
   </td>
    <td valign="middle" class="dvtCellLabel">Employee : </td>
   <td valign="middle" class="cellInfo1">
   <asp:DropDownList ID="DdlEMPLOYEE" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
   </asp:DropDownList>

   </td>
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel">Sales Date :</td>
   <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="txtdate" runat="server" CssClass="textbox"></asp:TextBox>
   &nbsp;<asp:Image ID="Image1" runat="Server" ImageUrl="~/images/cal.gif" align="absmiddle" />                             
   <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="txtdate" />                                 
 </td>
   <td valign="middle" class="dvtCellLabel">PLC / Sq. Yrds. :</td>
   <td valign="middle"  class="cellInfo1"><asp:TextBox ID="Txtplccharge" onKeyUp="javascript:Add();" runat="server" CssClass="textbox"></asp:TextBox></td>
   
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Specification :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotspecification" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Plot Size :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotsize" runat="server" onKeyUp="javascript:Add();" CssClass="textbox"></asp:TextBox></td>
   </tr>

    <tr>
   <td valign="middle" class="dvtCellLabel">Total Plot Area :</td>  
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotarea" runat="server" onKeyUp="javascript:Add();" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Rate Per Sq. Yard :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtratesqyrd"  onKeyUp="javascript:Add();" runat="server" CssClass="textbox"></asp:TextBox></td>
   </tr>
    <tr>
   <td valign="middle" class="dvtCellLabel">Discount Per Sq.Yard :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtdiscount" runat="server" onKeyUp="javascript:Add();"
        CssClass="textbox"></asp:TextBox>
           </td>
    <td class="cellInfo1"> <asp:TextBox ID="txtplotcost1" Visible="true" runat="server" onKeyUp="javascript:Addd();" 
   style="color:white; background-color:white; border:none;"></asp:TextBox></td>
   <td class="cellInfo1"> <asp:TextBox ID="txtplotcost2" Visible="true" runat="server" onKeyUp="javascript:Addd();" 
   style="color:white; background-color:white; border:none;"></asp:TextBox>
    <asp:TextBox ID="Txtrestamt1" Visible="true" runat="server" onblur="Calculae();"
   style="color:white; background-color:white; border:none; width:50px"></asp:TextBox>
   
   
   </td>
     </tr>
  
   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; font-size:15px; text-align:center; background-color:#DDDCDD">
   ENTER CUSTOMER DETAILS :
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Registrant Name :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtcustomername" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle"  class="dvtCellLabel">Father's Name :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtfathername" runat="server" CssClass="textbox"></asp:TextBox></td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Mobile No. :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtmob" runat="server" 
           CssClass="textbox" MaxLength="10"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Address  : </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtaddress" runat="server" TextMode="MultiLine" Height="50px" CssClass="textbox"></asp:TextBox></td>
   
   </tr>
  <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; font-size:15px; text-align:center; background-color:#DDDCDD">
   ENTER PRICE DETAILS :
   </td>
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel">Plot Cost :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotcost" runat="server"  CssClass="textbox"></asp:TextBox></td>
  <td valign="middle" class="dvtCellLabel">Booking Amount :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtbookingamt" runat="server"  CssClass="textbox" onKeyUp="javascript:Addd();" ></asp:TextBox></td>
   
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel">No. Of EMI's :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtnoemi" runat="server"    CssClass="textbox" onKeyUp="javascript:Addd();" ></asp:TextBox></td>
  <td class="dvtCellLabel">
    
     Payment Mode  
       &nbsp;:</td>
    <td class="cellInfo1"> 
   
    <asp:RadioButton runat="server" ID="radio" Text="Cash" 
           GroupName="ModeOfPay" oncheckedchanged="radio_CheckedChanged" 
           AutoPostBack="True"  /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       <asp:RadioButton runat="server" ID="radioo" Text="Cheque" GroupName="ModeOfPay" 
           oncheckedchanged="radioo_CheckedChanged" AutoPostBack="True" />
   
   </td>
    </tr>
    <asp:Panel ID="panelbankdetails" runat= "server"  Visible="false" >
   <tr>
   
    <td valign="middle" class="dvtCellLabel">Cheque No. :</td>
   <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="txtcheq" runat="server" CssClass="textbox"></asp:TextBox></td>
    <td valign="middle" class="dvtCellLabel">Bank & Branch : </td>
   <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="txtbranch" runat="server" CssClass="textbox" ></asp:TextBox></td>
 </tr>  </asp:Panel>
   <tr>
    <td colspan="4"  valign="middle" style="background-color:#B6B6B4; border:none;text-align:center"  >
    <label style="color:Maroon; text-align:center"> Note: This is Automated Calculation System . You  Need not Calculate Manually</label>
    </td> 
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel">Rest Amount :</td>
   <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="Txtrestamt" runat="server" CssClass="textbox"></asp:TextBox>
         </td>
        

    <td valign="middle" class="dvtCellLabel">EMI Amount :</td>
   <td valign="middle" class="cellInfo1">
       <asp:TextBox ID="Txtemiamt" runat="server"  CssClass="textbox"></asp:TextBox></td>
   
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Mode Of Payment :</td>
   <td valign="middle" class="cellInfo1" > 
   <asp:RadioButton runat="server" 
                   ID="radcash" 
                   Text="Cash" 
                   GroupName="Mode Of Payment" 
                   AutoPostBack="True" 
                   oncheckedchanged="radcash_CheckedChanged"  /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   <asp:RadioButton runat="server" 
                    ID="radCheque" 
                    Text="Cheque" 
                    GroupName="Mode Of Payment" 
                    AutoPostBack="True" 
                    oncheckedchanged="radCheque_CheckedChanged" /></td>
   <td valign="middle" class="dvtCellLabel">Amount :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtcashamt" runat="server"  CssClass="textbox"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtcashamt"
                                                                    ErrorMessage="Numeric or Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ControlToValidate="Txtcashamt" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
  
   
   </td>
   
   </tr>
    <asp:Panel ID="panelemi" runat= "server"  Visible= "false" >
    <tr>
   <td valign="middle" class="dvtCellLabel">Cheque No. <b style="padding-left:50px"> : </b></td>
   <td valign="middle"  class="cellInfo1"><asp:TextBox ID="Txtchequeno" runat="server"  CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Bank & Branch<b style="padding-left:35px"> : </b></td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtbankname" runat="server" CssClass="textbox"></asp:TextBox></td>
   </tr>
</asp:Panel>
   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:0px; padding-top:10px; text-align:center;">
       <asp:Button ID="submit" CssClass="submit_botton1" runat="server" Text="Submit"  onclick="submit_Click" />
       <asp:Button ID="reset" CssClass="submit_botton1" runat="server" Text="Reset" onclick="reset_Click" />
  <%-- <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click" />
   &nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" onclick="reset_Click"/>--%>
  
   </td>
   </tr>
   </table>
   </div>
   </center>
   </center>
    </td>
    </tr>

    </table>

 <%--<div  style=" width:100%">
 
 <div class="csstmenu">
  <ul style="width:92%">

   <li style="margin-left:160px; height:36px;"><asp:HyperLink ID="Hypl_doplus" runat="server" NavigateUrl="~/home.aspx" Font-Size="15px"  Height="36px"><span>DOPLUS</span></asp:HyperLink></li>
  
   <li style="margin-left:45px"><asp:HyperLink ID="Hypl_branch" runat="server" NavigateUrl="#" Font-Size="15px" Height="36px"><span>Branch</span></asp:HyperLink>
   <ul style="text-align:left;">
       <li class="has-sub"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Branch/generate_branch.aspx" Font-Size="13px"><span>Generate Branch</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Branch/Show_Branch_Login_Details.aspx" Font-Size="13px"><span>View Branch Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Branch/update_branch_Details.aspx" Font-Size="13px"><span>Update Branch Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Branch/delete_branch.aspx" Font-Size="13px"><span>Delete Branch</span></asp:HyperLink></li>
      </ul>
   </li>

   

   <li style="margin-left:45px"><asp:HyperLink ID="hypl_projects" runat="server" NavigateUrl="#" Font-Size="15px" Height="36px"><span>PROJECT</span></asp:HyperLink>
       <ul style="text-align:left;">
       <li class="has-sub"><asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/Project/new_project.aspx" Font-Size="13px" CssClass="has-sub"><span>Add Project</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Project/view_project.aspx" Font-Size="13px"><span>View Project Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Project/update_project_details.aspx" Font-Size="13px"><span>Update Project Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/Project/delete_project.aspx" Font-Size="13px"><span>Delete Project</span></asp:HyperLink></li>
      </ul>
   </li>

   <li style="margin-left:40px"><asp:HyperLink ID="hypl_plot" runat="server" NavigateUrl="#" Font-Size="15px" Height="36px"><span>PLOT</span></asp:HyperLink>
      <ul style="text-align:left;">
       <li class="has-sub"><asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/Plot/add_plot_details.aspx" Font-Size="13px"><span>Add Plot Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/Plot/show_project_details.aspx" Font-Size="13px"><span>View Plot Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/Plot/update_plot_details.aspx" Font-Size="13px"><span>Update Plot Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="~/Plot/delete_plot_deatils.aspx" Font-Size="13px"><span>Delete Plot Details</span></asp:HyperLink></li>
      </ul>
   </li>
    <li style="margin-left:50px"><asp:HyperLink ID="hypl_report" runat="server" NavigateUrl="~/home.aspx" Font-Size="15px" Height="36px"><span>REPORTS</span></asp:HyperLink>
       <ul style="text-align:left;">
       <li class="has-sub"><asp:HyperLink ID="HyperLink70" runat="server" NavigateUrl="~/Project/project_report.aspx" Font-Size="13px"><span>Project Report</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/block_report.aspx" Font-Size="13px"><span>Block Report</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink71" runat="server" NavigateUrl="~/Branch/branch_sales_report.aspx" Font-Size="13px"><span>Branch Sales Report</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink72" runat="server" NavigateUrl="~/Sale/sales_report.aspx" Font-Size="13px"><span>Invoice Sale Report</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink73" runat="server" NavigateUrl="~/Employee/employee_sales_report.aspx" Font-Size="13px"><span>Employee Sales Report</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink86" runat="server" NavigateUrl="~/Expance/monthly_report.aspx" Font-Size="13px"><span>Monthly Report</span></asp:HyperLink></li>
      </ul>
   </li>
   
    <li style="margin-left:40px"><asp:HyperLink ID="hypl_company_settings" runat="server" NavigateUrl="~/CompSetting.aspx" Font-Size="15px" Height="36px"><span>COMPANY SETTINGS</span></asp:HyperLink></li>
 
 <li style="margin-left:-175px"><asp:HyperLink ID="hypl_employee" runat="server" NavigateUrl="#" Font-Size="15px" Height="36px"><span>EMPLOYEE</span></asp:HyperLink>
      <ul style="text-align:left">
       <li class="has-sub"><asp:HyperLink ID="HyperLink79" runat="server" NavigateUrl="~/Employee/new_agent.aspx" Font-Size="13px"><span>Add New Employee</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink80" runat="server" NavigateUrl="~/Employee/show_agent.aspx" Font-Size="13px"><span>View Employee Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink81" runat="server" NavigateUrl="~/Employee/show_agent_details.aspx" Font-Size="13px"><span>Update Employee Detail</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink82" runat="server" NavigateUrl="~/Employee/delete_agent.aspx" Font-Size="13px"><span>Delete Employee</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Employee/agent_attendance.aspx" Font-Size="13px"><span>Employee Attendance</span></asp:HyperLink></li>
     </ul>
   </li>


   <li style="margin-left:-25px"><asp:HyperLink ID="hypl_dayrep" runat="server" NavigateUrl="~/home.aspx" Font-Size="15px" Height="36px"><span>DAY REPORT</span></asp:HyperLink>
       <ul style="text-align:left">
       <li class="has-sub"><asp:HyperLink ID="HyperLink24" runat="server" NavigateUrl="~/Day_Report/daily_calling_report_entry.aspx" Font-Size="13px"><span>DCR Entry</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink25" runat="server" NavigateUrl="~/Day_Report/day_finance_report_entry.aspx" Font-Size="13px"><span>DFR Entry</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="~/Day_Report/visitor_entry.aspx" Font-Size="13px"><span>Visitor Entry</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl="~/Day_Report/day_calling_report.aspx" Font-Size="13px"><span>DCR Report</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink83" runat="server" NavigateUrl="~/Day_Report/day_finance_report.aspx" Font-Size="13px"><span>DFR Report</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink84" runat="server" NavigateUrl="~/Day_Report/visitor_report.aspx" Font-Size="13px"><span>Visitor Report</span></asp:HyperLink></li>
       </ul>
   </li>

   <li style="margin-left:20px"><asp:HyperLink ID="hypl_sales" runat="server" NavigateUrl="~/home.aspx" Font-Size="15px" Height="36px"><span>SALES</span></asp:HyperLink>
       <ul style="text-align:left">
       <li class="has-sub"><asp:HyperLink ID="HyperLink29" runat="server" NavigateUrl="~/Sale/sale_insert.aspx" Font-Size="13px"><span>New Sales</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink30" runat="server" NavigateUrl="~/Sale/sale_detail_view.aspx" Font-Size="13px"><span>View Sales Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink31" runat="server" NavigateUrl="~/Sale/update_sale_details.aspx" Font-Size="13px"><span>Update Sales Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink32" runat="server" NavigateUrl="~/Sale/booking_cancel.aspx" Font-Size="13px"><span>Cancel Sales</span></asp:HyperLink></li>
      </ul>
   </li>

   <li style="margin-left:20px"><asp:HyperLink ID="hypl_emi" runat="server" NavigateUrl="~/home.aspx" Font-Size="15px" Height="36px"><span>EMI ENTRY</span></asp:HyperLink>
       <ul style="text-align:left">
       <li class="has-sub"><asp:HyperLink ID="HyperLink37" runat="server" NavigateUrl="~/EMI/emi_entry.aspx" Font-Size="13px"><span>New EMI Entry</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink47" runat="server" NavigateUrl="~/EMI/view_emi_detail.aspx" Font-Size="13px"><span>View EMI Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink54" runat="server" NavigateUrl="~/EMI/update_emi_details.aspx" Font-Size="13px"><span>Update EMI Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink61" runat="server" NavigateUrl="~/EMI/delete_emi.aspx" Font-Size="13px"><span>Cancel EMI</span></asp:HyperLink></li>
      </ul>
   </li>

    <li style="margin-left:20px"><asp:HyperLink ID="hypl_expenses" runat="server" NavigateUrl="~/home.aspx" Font-Size="15px" Height="36px"><span>EXPENSES</span></asp:HyperLink>
      <ul style="text-align:left">
       <li class="has-sub"><asp:HyperLink ID="HyperLink75" runat="server" NavigateUrl="~/Expance/expense_entry.aspx" Font-Size="13px"><span>New Expense Entry</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink76" runat="server" NavigateUrl="~/Expance/view_expense.aspx" Font-Size="13px"><span>View Expense Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink77" runat="server" NavigateUrl="~/Expance/VIEW_EXPANCE_DETAILS.aspx" Font-Size="13px"><span>Update Expense Details</span></asp:HyperLink></li>
       <li class="has-sub"><asp:HyperLink ID="HyperLink78" runat="server" NavigateUrl="~/Expance/delete_expense.aspx" Font-Size="13px"><span>Cancel Expense Details</span></asp:HyperLink></li>
      </ul>
   </li>

  
   <li style="margin-left:20px"><asp:HyperLink ID="hypl_payment" runat="server" NavigateUrl="~/payment.aspx" Font-Size="15px" Height="36px"><span>PAYMENT</span></asp:HyperLink></li>
   
   
   

   </ul>
</div>
 
    </div>--%>
 </center>


   
   </div>
    


    <center>
    <div id="footerwrapper">
	<div style="width:100%; background-color:#1969A4; height:50px">
    <table  width="960px">
    <tr>
    <td valign="middle" style="text-align:left">
    <p style="margin-top:15px">
    <a href="#" style="color:white; font-family:Calibri; font-size:12px; text-decoration:none;"><b>© 2015 SAGONI INDIA PRIVATE LIMITED All rights reserved</b></a><br />
    </p>
    </td>
    <td valign="middle" style="text-align:right">
    <p style="margin-top:15px">
    <a href="#" style="color:white; font-family:Calibri; font-size:12px; text-decoration:none;"><b>Powered By SAGONI</b></a><br />
    </p>
    </td>
    </tr>
    </table>
    </div>
</div>
    </center>
    </form>
</body>
</html>

