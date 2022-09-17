<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="visitor_entry.aspx.cs" Inherits="visitor_entry" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" /><script type="text/javascript" src="../Jscript/mtmv.js"></script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Visitor Entry</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7% ">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
  Enter Visitor Details
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabeltop">Branch Name : </td>
   <td valign="middle" class="cellInfo">
   <asp:DropDownList ID="Ddlbranchname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    
    </asp:DropDownList> </td>
   <td valign="middle" class="dvtCellLabeltop">Employee Name : </td>
   <td valign="middle" class="cellInfo">
   <asp:DropDownList ID="ddlagentname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd"  CssClass="dropdown">
   
    </asp:DropDownList>
   </td>
   
   </tr>

   <tr>
    <td valign="middle" class="dvtCellLabel">Client Name :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtclientname" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Mobile No. :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtclientmobile" 
           runat="server" CssClass="textbox" MaxLength="10"></asp:TextBox></td>
  
   </tr>

    <tr>
    <td valign="middle" class="dvtCellLabel">Address:</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtcliaddress" runat="server" CssClass="textbox"></asp:TextBox></td>
    <td valign="middle" class="dvtCellLabel"></td>
   <td valign="middle" class="cellInfo1"></td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">DATE: </td>
   <td valign="middle" class="cellInfo1">
    <asp:TextBox ID="txtfromdate" runat="server" CssClass="textbox"></asp:TextBox>
     <asp:Image runat="Server" ID="image1" align="absmiddle" ImageUrl="~/images/cal.gif" />
     <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true" ControlToValidate="txtfromdate" Display="Dynamic" ErrorMessage="Enter From Date"></asp:RequiredFieldValidator>
     <asp:CompareValidator ID="cmv_fromdate" ControlToValidate="txtfromdate" Operator="DataTypeCheck" Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <ajax:CalendarExtender ID="calendarextender3" runat="server" TargetControlID="txtfromdate"
                            Format="dd/MM/yyyy" PopupButtonID="image1" />

   </td>
   <td valign="middle" class="dvtCellLabel"></td>
   <td valign="middle" class="cellInfo1">
                               
 </td>
 </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:5px; padding-top:5px; text-align:center; background-color:#DDDCDD">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click1" />
   </td>

   </table>
</div>
   
   
</center>
</asp:Content>

