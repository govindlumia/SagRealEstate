<%@ Page Title="SAGONI REAL ESTATE SOFTWARE" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" /><script type="text/javascript" src="../Jscript/mtmv.js"></script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <div class="shadow body_main" >


    <div class="main_setup">
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 32PX;color: rgb(29, 28, 28);text-align:center">

</p>
<div class="setup">Setup</div>

<div class="main_setup_icon">

<div class="col-md-12 padding_left_right">
<div class="col-md-4 padding_left_right">
<div class="setup_icon">
<div class="setup_icon_left"></div>
<div class="setup_icon_right"> <h4>Create User Login</h4>
<ul>
    <li><a href="Branch/generate_branch.aspx" class="padding_left_setup"> Create User</a></li>
    <li><a href="Branch/Show_Branch_Login_Details.aspx" class="border_right_setup">View User Details</a></li>
</ul>
</div>
</div>
</div>

<div class="col-md-4 padding_left_right">
<div class="setup_icon1">
<div class="setup_icon_left1"></div>
<div class="setup_icon_right"> <h4> Employee</h4>
<ul>
    <li><a href="Employee/new_agent.aspx" class="padding_left_setup"> Add New Employee</a></li>
    <li><a href="Employee/show_agent_details.aspx" class="border_right_setup">View Employee Details</a></li>
</ul>
</div>
</div>
</div>

<div class="col-md-4 padding_left_right">
<div class="setup_icon2">
<div class="setup_icon_left2"></div>
<div class="setup_icon_right"> <h4>Agent</h4>
<ul>
    <li><a href="Agent/add_agent_com.aspx" class="padding_left_setup"> Add New Agent </a></li>
    <li><a href="Agent/view_agent_com.aspx" class="border_right_setup">View Agent Details</a></li>
</ul>
</div>
</div>
</div>


<div class="col-md-4 padding_left_right">
<div class="setup_icon margin_top2">
<div class="setup_icon_left3"></div>
<div class="setup_icon_right"> <h4> Project</h4>
<ul>
    <li><a href="Project/new_project.aspx" class="padding_left_setup"> Add New Project</a></li>
    <li><a href="Project/update_project_details.aspx" class="border_right_setup">View Project Details</a></li>
</ul>
</div>
</div>
</div>

<div class="col-md-4 padding_left_right">
<div class="setup_icon2 margin_top2">
<div class="setup_icon_left5"></div>
<div class="setup_icon_right2"> <h4>Plot</h4>
<ul>
    <li><a href="Plot/add_plot_details.aspx" class="padding_left_setup">Add Plot Details </a></li>
    <li><a href="Plot/update_plot_details.aspx" class="border_right_setup">View Plot Details</a></li>
    <li><a href="Plot/plot_status.aspx" class="padding_left_setup border_right border_left_icon">Plot Status </a></li>
   
</ul>
</div>
</div>
</div>



<div class="col-md-4 padding_left_right">
<div class="setup_icon margin_top2">
<div class="setup_icon_left4"></div>
<div class="setup_icon_right"> <h4> Token</h4>
<ul>
    <li><a href="Sale/token_Form.aspx" class="padding_left_setup">New Token Insert</a></li>
    <li><a href="Sale/show_token_details.aspx" class="border_right_setup">View Token Details</a></li>
</ul>
</div>
</div>
</div>

</div>


<div class="clear"></div>




<div class="col-md-12 padding_left_right">
<div class="col-md-4 padding_left_right">
<div class="wrap2">
<div class="setup_icon_left6"></div>
<div class="setup_icon_right3"> <h4>Sale</h4>
<ul>
    <li><a href="Sale/sale_insert.aspx" class="padding_left_setup">New Sale Insert </a></li>
    <li><a href="Sale/sale_detail_view.aspx" class="border_right_setup">View Sale Details</a></li><br>
    <li><a href="Sale/booking_cancel.aspx" class="padding_left_setup border_right">Cancel Sale Details </a></li>
   
</ul>
</div>
</div>
</div>

<div class="col-md-4 padding_left_right">
<div class="setup_icon3">
<div class="setup_icon_emi"></div>
<div class="setup_icon_rightemi"> <h4>Emi</h4>
<ul>
    <li><a href="EMI/emi_entry.aspx" class="padding_left_setup">New EMI Insert</a></li>
    <li><a href="EMI/view_emi_detail.aspx" class="border_right_setup">View EMI Details</a></li><br>
    <li><a href="EMI/emi_reminder.aspx" class="padding_left_setup border_right">EMI Reminder </a></li>
   
</ul>
</div>
</div>
</div>


<div class="col-md-4 padding_left_right ">
<div class="setup_icon1">
<div class="plot_transfer"></div>
<div class="setup_icon_right plot_transfer1"> <h4> Plot Transfer</h4>
<ul>
    <li><a href="Plot%20Details/Plot_Details_Insert.aspx" class="padding_left_setup">Plot Transfer Insert</a></li>
    <li><a href="Plot%20Details/plot_transferview.aspx" class="border_right_setup">View Transfer Details</a></li>
</ul>
</div>
</div>
</div>













<div class="col-md-4 padding_left_right clear">
<div class="wrap3">
<div class="plot_resistry_icon_left6"></div>
<div class="setup_icon_right3 setup_icon_esistry3"> <h4>Plot Registry</h4>
<ul>
    <li><a href="Plot%20Details/Plot_Details_Insert.aspx" class="padding_left_setup">Plot Transfer Insert </a></li>
    <li><a href="Plot%20Details/plot_transferview.aspx" class="border_right_setup">View Transfer Details</a></li><br>
    
   
</ul>
</div>
</div>
</div>



<div class="col-md-4 padding_left_right">
<div class="wrap4">
<div class="expense"></div>
<div class="setup_icon_right exeuc"> <h4> Expense</h4>
<ul>
    <li><a href="Expance/expense_entry.aspx" class="padding_left_setup">New Expense Insert</a></li>
    <li><a href="Expance/VIEW_EXPANCE_DETAILS.aspx" class="border_right_setup">View Expense Details</a></li>
</ul>
</div>
</div>
</div>


<div class="col-md-4 padding_left_right">
<div class="wrap3">
<div class="payment"></div>
<div class="setup_icon_rightemi"> <h4> Payment</h4>
<ul>
    <li><a href="Payment/payment.aspx" class="padding_left_setup">Employee Payment</a></li>
    <li><a href="Payment/Agentpayment.aspx" class="border_right_setup"> Agent Payment</a></li><br>
    <li><a href="Payment/payment_details.aspx" class="padding_left_setup ">View Payment </a></li>
     <li><a href="Payment/payment_details.aspx" class=" border_right">View Payment </a></li>
   
</ul>
</div>
</div>
</div>

</div>


















<div class="col-md-12 padding_left_right">
<div class="setup_icon4">
<div class="report_1"></div>
<div class="setup_icon_repot"> <h4> Report</h4>
<ul>
    <li><a href="Report/Laser_Report.aspx" class="padding_left_setup">Ledger Report</a></li>
    <li><a href="Report/project_report.aspx"> Project Report</a></li>
    <li><a href="Report/block_report.aspx">Plot Details Report </a></li>
    <li><a href="Report/sales_report.aspx">Sales Report </a></li>
    <li><a href="Report/employee_sales_report.aspx">Employee Sales Report </a></li>
     <li><a href="Report/agent_report_com.aspx" class=" border_right">Agent Sales Report </a></li>
   
</ul>
</div>
</div>
</div>





</div>

</div>


 <%--<table class="body_table_pn">
    <tr>
    <td valign="middle" style=" padding:34px 10px 10px 10px">
    
    <table width="100%" class="body_panel"  >
    <tr>
    <td valign="middle" char="body_table_td"><img class="body_table_td1"  alt="" src="images/sogoni_logo2.png" alt="Logo" title="Logo" /></td>
    <td class="body_table_td_2" valign="middle">

    <p style="font-family:Armata; font-size:20px; color:#d40000; font-weight:bold; text-align:left; padding-left:20px">Software Specifications : </p>

    <ul style="font-family:Armata; font-size:15px; color:#000; text-align:left; line-height:170%">
    <li>Complete inventory of real estate.</li>
    <li>EMI management of client.</li>
    <li>Plot & project management features.</li>
    <li>Agents Commissions Report.</li>
    <li>Report of sale status on monthly, Quarterly & Annually.</li>
    <li>Expense management of real estate company.</li>
    <li>Branch management. </li>
    <li>Branch sale report.</li>
    <li>Project wise sales report.</li>
    <li>Invoice management of EMI & Booking amount.</li>
    <li>Reports of EMI applicable in months. </li>
    </ul>

    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>--%>
 

</div>

</asp:Content>

