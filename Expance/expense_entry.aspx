<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="expense_entry.aspx.cs" Inherits="expense_entry" Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
     <link href="../css/drop.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/dropdon.js" type="text/javascript"></script>
   <link rel="../stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Expense Entry</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">
<table width="98%" cellpadding="0" cellspacing="0" class="big">
  
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Expence Details 
   </td>
   </tr>

    <tr>
     <td valign="middle" class="dvtCellLabel">Name : </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtthrough" runat="server" 
           CssClass="textbox"></asp:TextBox></td>
     <td valign="middle" class="dvtCellLabel">Date:</td>
   <td valign="middle"  class="cellInfo1">
   <asp:TextBox ID="txtdate" runat="server" CssClass="textbox"></asp:TextBox>
   &nbsp;<asp:Image ID="Image1" runat="Server" ImageUrl="~/images/cal.gif" align="absmiddle" />                             
   <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="txtdate" />                                 
 </td>
   </tr>

   <tr>

   <td valign="middle" class="dvtCellLabel"> Purpose :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtporopuse" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Remarks :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtremarks" runat="server" TextMode="MultiLine" Height="70px" CssClass="textbox"></asp:TextBox></td>

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
   <asp:RadioButton  runat="server" 
                     ID="radCheque" 
                     Text="Cheque" 
                     GroupName="Mode Of Payment" 
                     AutoPostBack="True" 
                     oncheckedchanged="radCheque_CheckedChanged" /></td>
   
   <td valign="middle" class="dvtCellLabel" >Amount :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtamount" runat="server" CssClass="textbox"></asp:TextBox></td>
   
   </tr>
    <asp:Panel ID="panelemi" runat= "server"  Visible= "false" >
    <tr>
   <td valign="middle" class="dvtCellLabel">Cheque No. <b style="padding-left:50px"> : </b></td>
   <td valign="middle"  class="cellInfo1"><asp:TextBox ID="txtcheq" runat="server"  CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Bank & Branch<b style="padding-left:35px"> : </b></td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtbankname" runat="server" CssClass="textbox"></asp:TextBox></td>
   </tr>
</asp:Panel>
    <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center;">
       <asp:Button ID="submit" CssClass="submit_botton1" runat="server" Text="Submit" onclick="submit_Click1" />
       <asp:Button ID="reset" CssClass="submit_botton1" runat="server" Text="Reset" onclick="reset_Click" />
  <%-- <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click1"/>
   &nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click"/>
   --%>
   </td>

   </tr>
   
   </table>
</div>
</center>
</asp:Content>

