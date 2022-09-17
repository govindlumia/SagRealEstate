<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="agent_attendance.aspx.cs" Inherits="Agent_agent_attendance" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

  <div class="detailedViewHeader">
  <p class="lvtHeaderText"> Insert Employee Attendance</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%;">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Employee Attendance
   </td>
   </tr>

    <tr>
    <td valign="middle" class="dvtCellLabeltop">Branch Name : </td>
    <td valign="middle" class="cellInfo" style="width:350px">
    <asp:DropDownList ID="Ddlbranchname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" CssClass="dropdown">
    
    </asp:DropDownList>
   </td>
    <td valign="middle" class="dvtCellLabeltop">Employee Name :</td>
   <td valign="middle" class="cellInfo">
   <asp:DropDownList ID="Ddlagent" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    
    </asp:DropDownList>
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Total Woking Days :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtworkingdays" runat="server"  CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Select Date :</td>
   <td valign="middle"  class="cellInfo1"><asp:TextBox ID="txtdate" runat="server"  CssClass="textbox" ></asp:TextBox>
   &nbsp;<asp:Image ID="Image1" runat="Server" ImageUrl="~/images/cal.gif" align="absmiddle" />                             
   <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="txtdate" />                                 
 </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Leave  : </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtleave" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Leave Without Pay :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="TxtLWP" runat="server" CssClass="textbox"></asp:TextBox></td>
  
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Absent : </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtabsent" runat="server"  CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel"></td>
   <td valign="middle" class="cellInfo1"></td>
  
   </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; background-color:#DDDCDD">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" onclick="submit_Click"/>&nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png"/>
   
 
   </td>

   </table>
   </div>
   </center>
</asp:Content>

