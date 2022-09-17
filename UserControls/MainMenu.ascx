<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MainMenu.ascx.cs" Inherits="UserControls_MainMenu" %>
<link id="Link1" href="../App_Themes/Theme1/Etech_HR.css" rel="Stylesheet" runat="server" />
<%--    <p>id:<%=Session["user_id"].ToString()%>></p>--%>
<asp:Label Visible="false" ID="lblid" runat="server"></asp:Label>
<%-- Tooltip Script and CSS start --%>
<%--<link rel="stylesheet" type="text/css" href="../css/style.css" />

<script type="text/javascript" language="javascript" src="../Js/script.js"></script>--%>
<%-- Tooltip Script and CSS End --%>
<div id="header-box">
    <div class="Menutab_Below_Div" style="float: right; padding-left: 5px; padding-right: 15px;">
    </div>
    <div id="module-menu">
        <div id="module-status" style="width: -75px">
            <span class="logout"><span style="float: right; padding-top: 6px"><span>Write To HR:-<a
                href="mailto:hr@etechies.in" style="color: #0099FF; text-decoration: none; font-size: 12px;">hr@etechies.in</a></span>
            </span><span style="float: right; padding-top: 5px">
                <img alt="" style="height: 16px; width: 16px" id="imgLogout" runat="server" src="~/CSS_Images/menu/icon-16-massmail.png" /></span></span>
        </div>
        <ul id="menu" style="z-index: 1500" class="basictab">
            <%--<li id="liHome" runat="server"><a visible="false" style="cursor: pointer" id="lnkhome"
                runat="server" href="Home.aspx">Home</a>
                <ul style="text-align: left">
                </ul>
            </li>--%>
            <li>
                <%--   <span class="hotspot" onmouseover="tooltip.show('welcome page to HRMS system');"
                onmouseout="tooltip.hide();">
             <a id="A3" runat="server" href="../Home.aspx" style="text-align: left;">
                Home </a></span>--%>
               <%-- <asp:LinkButton class="icon-16-view1" Font-Bold="true" ID="Home" runat="server" Text="Home"
                    CausesValidation="false" OnClick="home" ToolTip="welcome page to HRMS system."></asp:LinkButton>--%>
            </li>
            
            
               <li id="li2" runat="server" visible="true">
                <%--<span class="hotspot" onmouseover="tooltip.show('employee details can be viewed, edited and new joiners details created');"
                onmouseout="tooltip.hide();">
            
            <a id="A2" style="text-align: left; display: block;"
                href="#">Employee</a> </span>--%>
                <asp:LinkButton class="icon-16-view1" Font-Bold="true" ID="LinkButton2" runat="server"
                    Text="HOME" OnClick="home" CausesValidation="false" ToolTip="welcome page to HRMS system."></asp:LinkButton>
                <ul>
                    <%-- icon-16-article--%>
                 
                        <li><a id="EmpCount" class="icon-16-help" runat="server" href="~/Login/Organition_Employee_Details.aspx"
                        style="text-align: left; display: block;">Organization Employee Count</a> </li>
                </ul>
            </li>
            
            
            
            <li id="li12" runat="server" visible="true">
                <%--<span class="hotspot" onmouseover="tooltip.show('employee details can be viewed, edited and new joiners details created');"
                onmouseout="tooltip.hide();">
            
            <a id="A2" style="text-align: left; display: block;"
                href="#">Employee</a> </span>--%>
                <asp:LinkButton class="icon-16-view1" Font-Bold="true" ID="Employee" runat="server"
                    Text="Employee" CausesValidation="false" ToolTip="Employee Details Can Be Viewed, Edited And New Joiners Details Created."></asp:LinkButton>
                <ul>
                    <%-- icon-16-article--%>
                    <li><a id="Addemployee" class="icon-16-stats" runat="server" href="../Employee/Employee.aspx"
                        style="text-align: left; display: block;">Add Employee </a></li>
                    <li><a id="Editemployee" class="icon-16-edi" runat="server" href="../Employee/Emergency_Contact.aspx"
                        style="text-align: left; display: block;">Edit Employee</a> </li>
                    <li><a id="Viewemployee" class="icon-16-view1" runat="server" href="../Employee/Employee_List.aspx"
                        style="text-align: left; display: block;">View Employee</a> </li>
                        <%--<li><a id="employeecount" class="icon-16-help" runat="server" href="~/Login/Organition_Employee_Details.aspx"
                        style="text-align: left; display: block;">Organization Employee Count</a> </li>--%>
                </ul>
            </li>
            <%--         --------------Attendence-------------%>
            <li id="li26" runat="server" visible="true">
                <%--<span class="hotspot" onmouseover="tooltip.show('employee attendance to be marked, viewed, edited by manager/supervisor.');"
                onmouseout="tooltip.hide();">
            <a id="A9" style="text-align: left; display: block;"
                href="#">Attendance</a> </span>--%>
                <asp:LinkButton class="icon-16-view1" Font-Bold="true" ID="Attendance" runat="server"
                    Text="Attendance" CausesValidation="false" ToolTip="Employee Attendance To Be Marked, Viewed, Edited By Manager/Supervisor."></asp:LinkButton>
                <ul>
                    <li><a id="MarkAttendance" class="icon-16-stats" runat="server" href="~/Attendence/Add_Attendence.aspx"
                        style="text-align: left; display: block;">Mark Attendance</a> </li>
                    <li><a id="EditAttendance" class="icon-16-edi" runat="server" href="~/Attendence/Edit_Attendence.aspx"
                        style="text-align: left; display: block;">Edit Attendance</a> </li>
                    <%--</li>--%>
                    <li><a id="viewAttendance" class="icon-16-view1" runat="server" href="~/Attendence/Attendence_Details.aspx"
                        style="text-align: left; display: block;">View Attendance</a> </li>
                </ul>
            </li>
            <%-- ------------------Leave Management--------------------%>
              <li id="LeaveManagement" runat="server" visible="true"><a id="A11" style="text-align: left;
            display: block;" href="#">Leave Management</a>
            <ul>
            
                    
                <li><a id="leaveRequest" class="icon-16-stats" runat="server" href="../Leave/Leave_Request.aspx"
                    style="text-align: left; display: block;">leave Request</a>
                    
                      <ul>
                      
                      <%-- <li><a id="A1" class="icon-16-view1" runat="server" href="../Leave/Employee_Leave_Detail.aspx"
                    style="text-align: left; display: block;">My Leave Status</a> </li>--%>
                           
                            <%--<li id="Li3" runat="server" visible="true"><a class="icon-16-Edit" href="#">
                               Leave</a></li>--%>
                        </ul>
                    </li>
                     <li><a id="A1" class="icon-16-view1" runat="server" href="../Leave/Employee_Leave_Detail.aspx"
                    style="text-align: left; display: block;">My Leave Status</a> </li>
                    <%-- </li>--%>
                <li><a id="LeaveDtails" class="icon-16-edi" runat="server" href="~/Leave/Leave_Details.aspx"
                    style="text-align: left; display: block;">Leave Approved / Reject</a> </li>
                     <%--<li><a id="A45" class="icon-16-cpanel1" runat="server" href="~/Leave/Pre_Leave_Attendance.aspx"
                        style="text-align: left; display: block;">Test</a></li>--%>
                        
                         <%--<li><a id="A54" class="icon-16-cpanel1" runat="server" href="~/Leave/Pre_mark_attendance.aspx"
                        style="text-align: left; display: block;">Test 1</a></li>--%>
                    
                  
            </ul>
        </li>
        
        
        
        
        
          <%-- ------------------Assets--------------------%>
              <li id="Assets" runat="server" visible="true"><a id="A6" style="text-align: left;
            display: block;" href="#">Assets Management</a>
            <ul>
            
                    
                <li><a id="addassets" class="icon-16-person2" runat="server" href="~/Assets/Employee_list_assets_.aspx"
                    style="text-align: left; display: block;">Add Employee Assets</a>
                    
                      <ul>
                     
                    
                        </ul>
                    </li>
                     <li><a id="A8" class="icon-16-view1" runat="server" href="~/Assets/Edit_Employee_list_assets.aspx"
                    style="text-align: left; display: block;">View Employee Assets</a> </li>
                   
                <%--<li><a id="A9" class="icon-16-edi" runat="server" href="~/Leave/Leave_Details.aspx"
                    style="text-align: left; display: block;">Leave Approved / Reject</a> </li>--%>
                  
                    
                  
            </ul>
        </li>
       
     <%---------------------------REPORTS-------------------------------%>
            <li id="li1" runat="server" visible="true">
                <%--    <span class="hotspot" onmouseover="tooltip.show('Employee details & monthly attendance details can be viewed by the manager.');"
                onmouseout="tooltip.hide();">
            <a id="A1" style="text-align: left; display: block;"
                href="#">Reports</a> </span>--%>
                <asp:LinkButton class="icon-16-view1" Font-Bold="true" ID="Reports" runat="server"
                    Text="Reports" CausesValidation="false" ToolTip="Employee Details & Monthly Attendance Details Can Be Viewed By The Manager."></asp:LinkButton>
                <ul>
                    <li><a id="EmployeeDetails" class="icon-16-cpanel1" runat="server" href="~/Employee_Report.aspx"
                        style="text-align: left; display: block;">Employee Details</a></li>
                    <li><a id="AttendanceDetails" class="icon-16-cpanel1" runat="server" href="~/Attendance_Report.aspx"
                        style="text-align: left; display: block;">Attendance Details </a></li>
                          <li><a id="A5" class="icon-16-cpanel1" runat="server" href="~/Report/Attendance_Detail_Count.aspx"
                        style="text-align: left; display: block;">Attendance Details Count</a>
                        </li>
                         <li><a id="leaveDetails" class="icon-16-cpanel1" runat="server" href="~/Leave_Balance_Report.aspx"
                        style="text-align: left; display: block;">Employee Leave Details  </a></li>
                        
                        <li><a id="A4" class="icon-16-cpanel1" runat="server" href="~/Report/Leave_Request_Report.aspx"
                        style="text-align: left; display: block;">Employee Leave Request Details</a>
                        
                    
                    
                    </li>
                </ul>
            </li>
            <%--  --------------Login Details-----------%>
            <%--<li id="li34" runat="server" visible="true"><span class="hotspot" onmouseover="tooltip.show('employee details can be viewed by admin users');"
                onmouseout="tooltip.hide();"><a id="A151" style="text-align: left; display: block;"
                    href="#">Admin</a> </span>--%>
            <li>
                <asp:LinkButton class="icon-16-view1" Font-Bold="true" ID="Admin" runat="server"
                    Text="Admin" CausesValidation="false" ToolTip="Employee Details Can Be Viewed By Admin Users"></asp:LinkButton>
                <ul>
                    <li><a id="Userlist" class="icon-16-person3" runat="server" href="~/Login/User_Login_Detail.aspx"
                        style="text-align: left; display: block;">User List </a></li>
                    <li><a id="roles" class="icon-16-person3" runat="server" href="~/Login/Roles_Rights.aspx"
                        style="text-align: left; display: block;">Roles & Rights </a></li>
                </ul>
            </li>
            <%-- ('Testing 123<br />Testing 123')--%>
            <%--id="li2" runat="server" visible="true"><span class="hotspot" onmouseover="tooltip.show('employee can view respective self details and attendance');"
                onmouseout="tooltip.hide();"><a id="A7" style="text-align: left; display: block;"
                    href="#">About Me</a></span>--%>
            <%---------------------------About Me-------------------------------%>
            <li>
                <asp:LinkButton class="icon-16-view1" Font-Bold="true" ID="AboutMe" runat="server"
                    Text="About Me" CausesValidation="false" ToolTip="Employee Can View Respective Self Details And Attendance"></asp:LinkButton>
                <ul>
                    <li>
                        <asp:LinkButton class="icon-16-view1" ID="LinkButton1" runat="server" Text="MY Information"
                            CausesValidation="false" OnClick="myinformation"></asp:LinkButton>
                    </li>
                    <li><a id="MyAttendance" runat="server" href="~/Employee/Employee_personal_detail.aspx"
                        style="text-align: left; display: block;">MY Attendance</a> </li>
                </ul>
            </li>
            <%---------------------------HELP-------------------------------%>
            <li>
                <%--<a id="A11" runat="server" href="~/Help.aspx" style="text-align: left; display: block;">
                Help</a> --%>
                <asp:LinkButton class="icon-16-view1" Font-Bold="true" ID="Help" runat="server" Text="Help"
                    CausesValidation="false" ToolTip="Important Definitions for HRMS"></asp:LinkButton>
                <ul>
                    <li><a id="A2" class="icon-16-checkin" runat="server" href="~/Policy/Help.aspx" style="text-align: left;
                        display: block;">Important Definitions</a></li>
                    <%--<li><asp:LinkButton class="icon-16-person3" Font-Bold="true" ID="LinkButton3" runat="server" Text="Important Definitions HRMS"
                    OnClick="help" CausesValidation="false" ToolTip="Important Definitions for HRMS"></asp:LinkButton> </li>--%>
                    <%--<li> 
                    <asp:LinkButton class="icon-16-person3" Font-Bold="true" ID="LinkButton2"  runat="server" Text="dfff"
                    OnClick="holiday" CausesValidation="false" ToolTip="Holidy List"></asp:LinkButton>
                    </li>--%>
                    <li><a id="holidayee" class="icon-16-checkin" runat="server" href="~/Policy/Holiday_List.aspx"
                        style="text-align: left; display: block;">Holiday List</a></li>
                    <li><a id="A3" class="icon-16-checkin" runat="server" href="~/Policy/Leave_policy.aspx"
                        style="text-align: left; display: block;">Leave Policy</a></li>
                </ul>
            </li>
            <%------------------------------------ Master change --------------------------------------------%>
            <li>
                <%--<a id="A11" runat="server" href="~/Help.aspx" style="text-align: left; display: block;">
                Help</a> --%>
                <asp:LinkButton class="icon-16-view1" Font-Bold="true" ID="master" runat="server"
                    Text="Master Change" CausesValidation="false" ToolTip="Master Page for Update"></asp:LinkButton>
                <ul>
                    <li><a id="masterchange" class="icon-16-checkin" runat="server" href="~/User_Master/leave_Balance_Update.aspx"
                        style="text-align: left; display: block;">Leave Balance Update</a></li>
                    <%--<li><asp:LinkButton class="icon-16-person3" Font-Bold="true" ID="LinkButton3" runat="server" Text="Important Definitions HRMS"
                    OnClick="help" CausesValidation="false" ToolTip="Important Definitions for HRMS"></asp:LinkButton> </li>--%>
                    <%--<li> 
                    <asp:LinkButton class="icon-16-person3" Font-Bold="true" ID="LinkButton2"  runat="server" Text="dfff"
                    OnClick="holiday" CausesValidation="false" ToolTip="Holidy List"></asp:LinkButton>
                    </li>--%>
                    <%-- <li><a id="A10" class="icon-16-checkin" runat="server" href="~/Policy/Holiday_List.aspx"
                        style="text-align: left; display: block;">Holiday List</a></li>--%>
                    <li><a id="A12" class="icon-16-checkin" runat="server" href="~/Attendance_Detail_Mailsystem.aspx"
                        style="text-align: left; display: block;">Attendance Detail Mail Send</a></li>
                        <li><a id="A10" class="icon-16-checkin" runat="server" href="~/pdfmailtest.aspx"
                        style="text-align: left; display: block;">test</a></li>
                </ul>
            </li>
    </div>
    <div class="clr">
    </div>
</div>

<script language="javascript" type="text/javascript">

</script>

