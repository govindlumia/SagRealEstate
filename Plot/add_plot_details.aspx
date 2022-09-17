<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_plot_details.aspx.cs" Inherits="Project_add_plot_details"Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
 <script type="text/javascript">
     function camelcase(input, ctrl) {
         var s = input;

         var result = s.replace(/(?:^|\s)\w/g, function (match) {
             return match.toUpperCase();
         });

         document.getElementById(ctrl).value = result;

     }
</script>

  <%--  <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../Jscript/Menu.js"></script>

    <link href="http://fonts.googleapis.com/css?family=Armata" rel='stylesheet' type='text/css'>--%>
    <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
     <link href="../css/drop.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/dropdon.js" type="text/javascript"></script>
   <link rel="../stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
   <%--<script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>
--%>
    
    <title>SAGONI REALESTATE - HelpDesk </title>  
     <link rel="Shortcut Icon" href="../images/icon.png" />
    <script language="javascript" type="text/javascript">
        function Addd() {
            var a, b,C;
            a = parseFloat(document.getElementById("Txtplotarea").value);

            if (isNaN(a) == true) {
                a = 0;
            }
            var b = parseFloat(document.getElementById("Txtratesqyrd").value);
            if (isNaN(b) == true) {
                b = 0;
            }
            var C = parseFloat(document.getElementById("Txtplccharge").value);
            if (isNaN(C) == true) {
                C = 0;
            }
            
            var plotcost = ((parseFloat(b) + parseFloat(C))* parseFloat(a));

            var q = plotcost.toFixed(2);
            //  var t = plotarea.toFixed(2);

            document.getElementById("Txtplotcost").value = q;
            //  document.getElementById("Txtarea1").value = t;

        }
    </script>
    


</head>
<body style="margin:0px 0px 0px 0px;">
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
            
       <asp:Button ID="Button1" CssClass="login_botton_1" runat="server" Text="LOG OUT" onclick="LinkButton1_Click" CausesValidation="false" />
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
    <td class="main_navi " valign="top"  ">
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
    <td class="main_icon_wrap" valign="top">
    <center>


<div class="detailedViewHeader">
  <p class="lvtHeaderText">Add Plot Details</p>
  </div>

  <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">
<table width="98%" cellpadding="0" cellspacing="0" class="big">
   
   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Plot Details 
   </td>
   </tr>

   <tr style="height:50px">
   <td valign="middle" class="dvtCellLabeltop">Project Name :</td>
   <td valign="middle" class="cellInfo"> 
       <asp:DropDownList ID="ddlproject" runat="server" Height="25px" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown"> 
           
       </asp:DropDownList>


   
  </td>
   <td valign="middle" class="dvtCellLabel">
   </td>
   <td valign="middle" class="cellInfo">
  
   </td>
   </tr>
   <tr>
  <td valign="middle" class="dvtCellLabel">Block . :</td>
   <td valign="middle" class="cellInfo1" style="width:350px; padding-top:15px">
    <asp:TextBox ID="txtblock" runat="server"  CssClass="textbox" onBlur="camelcase(this.value, this.id)"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                             ControlToValidate="txtblock" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
   </td>
   <td valign="middle"  class="dvtCellLabel">
  

   Plot  No. :

       </td>
  <td  valign="middle" class="cellInfo" style="margin-top:10px" >
    <asp:TextBox ID="Txtplotno" runat="server"  CssClass="textbox" 
          AutoPostBack="True" ontextchanged="Txtplotno_TextChanged"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorsal" runat="server" 
                             ControlToValidate="Txtplotno" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
    </td>
  
   </tr>
  
   <tr>
   <td colspan="4" class="dvtCellLabel" style="text-align:center; padding-bottom:10px; padding-top:10px; color:Maroon; font-size:12px">
    <asp:TextBox ID="Txtarea1" Visible="true" runat="server" onblur=" Calcu();" style=" background-color:#F7F7F7; border-style:none; border-color:#F7F7F7; font-size:.1px; color:#F7F7F7"></asp:TextBox>

   
    <asp:Label ID="lblMsg" runat ="server" Visible ="false"></asp:Label>  
   </td>
  </tr>

  <tr>
  <td valign="middle" class="dvtCellLabel">Plot Size (GAZ): </td>
  <td valign="middle" class="cellInfo1">
      <asp:TextBox ID="Txtplotarea" runat="server" CssClass="textbox" onKeyUp="javascript:Addd();">
        </asp:TextBox>
   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txtplotarea"
                                                                    ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                             ControlToValidate="Txtplotarea" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>  
   </td>
   <td valign="middle" class="dvtCellLabel">PLC / Sq. Yrds. :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplccharge" runat="server" CssClass="textbox" onKeyUp="javascript:Addd();" ></asp:TextBox>
  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Txtplccharge"
                                                                    ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                             ControlToValidate="Txtplccharge" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
  </td>
  <tr>
   <td valign="middle" class="dvtCellLabel"> <b style="color:Red">*</b>Rate Per Sq. 
        Yard :</td>
   <td valign="middle"  class="cellInfo1">
       <asp:TextBox ID="Txtratesqyrd" runat="server" CssClass="textbox" 
           onKeyUp="javascript:Addd();"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
           ControlToValidate="Txtratesqyrd" 
           ErrorMessage="Numeric &amp; Decimal Values (Like 0.00) are allowed" 
           ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="Txtratesqyrd" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
  </td>


   <td valign="middle" class="dvtCellLabel"><b style="color:Red">*</b>Plot Cost :</td>
   <td valign="middle" class="cellInfo1">
   
  <asp:TextBox ID="Txtplotcost" runat="server" CssClass="textbox" ></asp:TextBox>
  
  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Txtplotcost"
                                                                    ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                             ControlToValidate="Txtplotcost" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
   </td>
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel"><b style="color:Red">*</b>Plot Type :</td>
   <td valign="middle" class="cellInfo1">
  <asp:DropDownList ID="ddlplottype" runat="server" BorderColor="#dddddd" 
           BorderStyle="Solid" BorderWidth="1px" CssClass="dropdown" Height="25px" 
           Width="220px">
           <asp:ListItem> Select Plot Type</asp:ListItem>
           <asp:ListItem>Commercial Shops </asp:ListItem>
           <asp:ListItem>Residential Plot</asp:ListItem>
       </asp:DropDownList>
  
  
  
   </td>
  
   <td valign="middle" class="dvtCellLabel">Specification :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotspecification" runat="server" CssClass="textbox" onBlur="camelcase(this.value, this.id)"></asp:TextBox>
   </td>
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel">Plot Location :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txt_plotlocation" runat="server" CssClass="textbox"></asp:TextBox>
 </td>
   </tr>

   <tr>
   <td valign="middle"  colspan="4" style="padding-top:5px; text-align:center;  height:35px">
       <asp:Button ID="ImageButton1" CssClass="submit_botton1" runat="server" Text="Submit" onclick="ImageButton1_Click" />
       <asp:Button ID="reset" CssClass="submit_botton1" runat="server" Text="Reset" onclick="reset_Click" />
   <%--<asp:ImageButton ID="ImageButton1" runat="server" 
           ImageUrl="~/images/submitbutton.png" onclick="ImageButton1_Click" />&nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click"/>--%>
   </td>
   </tr>

</table>

</div>
    </center>

  </center>
    </td>
    </tr>

    </table>

 
 </center>


   
   </div>
    


 
    </form>
</body>
</html>

