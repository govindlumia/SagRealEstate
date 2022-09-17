<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="emi_entry.aspx.cs" Inherits="emi_entry" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
<script type="text/javascript" src="../Jscript/mtmv.js"></script>
<link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>--%>
<link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
     <link href="../css/drop.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/dropdon.js" type="text/javascript"></script>
   <link rel="../stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>


  <div class="detailedViewHeader">
  <p class="lvtHeaderText">EMI Entry</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%;">
<table width="98%" cellpadding="0" cellspacing="0" class="big">
  
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   EMI Details 
   </td>
   </tr>
   <tr> <td valign="middle" class="dvtCellLabel">Search(Customer ID) :</td>
    <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="txtsearch" runat="server" CssClass="textbox" ></asp:TextBox></td>
 <td class="dvtCellLabel" style="text-align:center; padding-bottom:10px; padding-top:10px">
  
     <asp:Button ID="Button1" CssClass="submit_botton3" runat="server" Text="Submit" onclick="Button1_Click"  
         CausesValidation="False" /></td>
 </tr>
    <tr>
   <td valign="middle" class="dvtCellLabeltop">Project Name : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
   
   <asp:TextBox ID="txtproject" runat="server" CssClass="textbox" ></asp:TextBox>
                
   
   </td>
   <td valign="middle" class="dvtCellLabeltop">Block :</td>
   <td valign="middle" class="cellInfo1">
   
   <asp:TextBox ID="txtblock" runat="server" CssClass="textbox" ></asp:TextBox>
  
   </td>
   </tr>

 <tr>
    <td valign="middle" class="dvtCellLabel">Plot No. :</td>
   <td valign="middle" class="cellInfo1">
  <asp:TextBox ID="Txtplotno" runat="server" CssClass="textbox" ></asp:TextBox>
  
   </td>
    <td valign="middle" class="dvtCellLabel"></td>
   <td valign="middle" class="cellInfo1">
    
     
       
       </td>
 </tr>

 
    
    

  <tr>
   
   <td valign="middle" class="dvtCellLabel">EMI Date :</td>
   <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="txtdate" runat="server" CssClass="textbox"></asp:TextBox>
   &nbsp;<asp:Image ID="Image1" runat="Server" ImageUrl="~/images/cal.gif" align="absmiddle" />                             
   <ajaxtoolkit:calendarextender ID="calendarextender3" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="txtdate" />
   </td>
   <td valign="middle" class="dvtCellLabel">Customer ID :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtcid" runat="server" CssClass="textbox"></asp:TextBox></td>
   
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Specification :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotspecification" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Plot Size :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotsize" runat="server" CssClass="textbox"></asp:TextBox></td>
   </tr>

    <tr>
   <td valign="middle" class="dvtCellLabel">Total Plot Area :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotarea" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Rate Per Sq. Yard :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtratesqyrd" runat="server" CssClass="textbox"></asp:TextBox></td>
   </tr>
    
   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; font-size:15px; text-align:center; background-color:#DDDCDD">
    CUSTOMER DETAILS :
   </td>
   </tr>

 <tr>
   <td valign="middle" class="dvtCellLabel">Registrant Name :</td>
   <td valign="middle"  class="cellInfo1"><asp:TextBox ID="Txtcustomername" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Father's Name :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtfathername" runat="server" CssClass="textbox"></asp:TextBox></td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Mobile No. :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtmob" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel"></td>
   <td valign="middle" class="cellInfo1"></td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Address  : </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtaddress" runat="server" TextMode="MultiLine" CssClass="textbox" Height="50px"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Plot Cost :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotcost" runat="server" CssClass="textbox"></asp:TextBox></td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Booking Amount :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtbookingamt" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Rest Amount :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtrestamt" runat="server" CssClass="textbox"></asp:TextBox></td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">No. Of EMI's :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtnoemi" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">EMI Amount :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtemiamt" runat="server" CssClass="textbox"></asp:TextBox></td>
   
   </tr>



      <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; font-size:15px; text-align:center; background-color:#DDDCDD">
    EMI  DETAILS :
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Mode Of Payment :</td>
   <td valign="middle" class="cellInfo1"> 
       <asp:RadioButton runat="server" ID="radcash" 
           Text="Cash" GroupName="Mode Of Payment" 
           oncheckedchanged="radcash_CheckedChanged" AutoPostBack="True" 
            /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       <asp:RadioButton runat="server" ID="radCheque" Text="Cheque" 
           GroupName="Mode Of Payment" oncheckedchanged="radCheque_CheckedChanged" 
           AutoPostBack="True"  /></td>
   <td valign="middle" class="dvtCellLabel">Amount : </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtcashamt" runat="server"  CssClass="textbox"></asp:TextBox></td>
   
   </tr>

    <tr>
   <td valign="middle" class="dvtCellLabel">Cheque No. :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtchequeno" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle"  class="dvtCellLabel">Bank & Branch :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtbankname" runat="server" CssClass="textbox"></asp:TextBox></td>
   </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; ">
       <asp:Button ID="submit" CssClass="submit_botton1" runat="server" Text="Submit" onclick="submit_Click1" />
       <asp:Button ID="reset" CssClass="submit_botton1" runat="server" Text="Reset" onclick="reset_Click" />
 <%--  <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click1"/>
   &nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click"/>--%>
   
   </td>

   </tr>
   </table>
   </div>
   </center>

</asp:Content>

