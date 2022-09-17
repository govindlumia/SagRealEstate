<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="delete_agent.aspx.cs" Inherits="delete_agent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" /><script type="text/javascript" src="../Jscript/mtmv.js"></script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Deactivate Employee</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%;">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >
     
  <tr>
  <td valign="middle" class="dvtCellLabeltop">User Name : </td>
  <td valign="middle" class="cellInfo" style="width:350px">
  <asp:DropDownList ID="Ddlbranchname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
  </asp:DropDownList> 

  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SetFocusOnError="true" InitialValue="0"
           ControlToValidate="Ddlbranchname" Display="Dynamic" ErrorMessage="Enter Branch Name"></asp:RequiredFieldValidator>
   </td>
   <td valign="middle" class="dvtCellLabeltop">EMPLOYEE NAME : </td>
   <td valign="middle" class="cellInfo">
   <asp:DropDownList ID="ddlagentname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
   
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true" InitialValue="0"
                            ControlToValidate="ddlagentname" Display="Dynamic" ErrorMessage="Enter Agent Name"></asp:RequiredFieldValidator>
    
    
    </td>
  
   
   </tr>

  

   <tr>
   <td valign="middle" colspan="4" style="padding-top:10px; text-align:center;; background-color:#DDDCDD">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" onclick="submit_Click"/>
   &nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" onclick="reset_Click"/>

   </td>

</table>
</div>
</center>

</asp:Content>

