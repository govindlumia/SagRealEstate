<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="purchase_details.aspx.cs" Inherits="Sale_purchase_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

<div class="detailedViewHeader">
  <p class="lvtHeaderText">Enter Purchaser Details</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%;">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   
   </td>
   </tr>

    <tr>
   <td valign="middle" class="dvtCellLabeltop">Select Project  : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="ddlselectproject" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true" InitialValue="0"
                            ControlToValidate="ddlselectproject" Display="Dynamic" ErrorMessage="Enter Project Name"></asp:RequiredFieldValidator>
    
   </td>
      <td valign="middle" class="dvtCellLabel">Block :</td>

     <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtblock" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                             ControlToValidate="txtblock" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
   </tr>

 <tr>
    
    <td valign="middle" class="dvtCellLabel">Plot No. :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotno" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" SetFocusOnError="true" 
                            ControlToValidate="Txtplotno" Display="Dynamic" ErrorMessage="Enter Plot No"></asp:RequiredFieldValidator>
    
     
       
       </td>
       <td valign="middle" class="cellInfo1" colspan="2" align="left">
       <asp:ImageButton ID="view" runat="server" ImageUrl="~/images/submitButton.png" onclick="view_Click" 
          />
          <asp:Label ID="lblMsg" ForeColor="red" runat ="server" Visible ="false"></asp:Label></td>
        
   
 </tr>

 
    


    

    
   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:20px; font-size:15px; text-align:center; background-color:#DDDCDD">
    Saler Details :
   </td>
   </tr>
    <tr>
   <td valign="middle" class="dvtCellLabeltop">Project  : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
       <asp:TextBox ID="txtproject" runat="server" 
           CssClass="textbox" Width="180px"></asp:TextBox>
    
   </td>
      <td valign="middle" class="dvtCellLabel">Block</td>

   <td valign="middle" class="cellInfo"><asp:TextBox ID="txtblock1" runat="server" 
           CssClass="textbox" Width="180px"></asp:TextBox>
        </td>
   </tr>
 <tr>
    <td valign="middle" class="dvtCellLabel">Plot No. :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtplot1" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
             
  
   </td>
    <td valign="middle" class="dvtCellLabel">Saler Name : </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtsaler" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
    
       
       </td>
 </tr>
 <tr>
    <td valign="middle" class="dvtCellLabel">Total Plot Cost :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtplotcost" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
                
     
  
   </td>
    <td valign="middle" class="dvtCellLabel">Booking Amount :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtbooking" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
     
       </td>
 </tr>

  <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:20px; font-size:15px; text-align:center; background-color:#DDDCDD">
    Purchaser Details :
   </td>
   </tr>
   <tr>
    <td valign="middle" class="dvtCellLabel">Purchaser Name :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtpurchase" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>

   </td>
    <td valign="middle" class="dvtCellLabel">Company Name :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtcompany" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
   
       
       </td>
 </tr>
  <tr>
   <td valign="middle" class="dvtCellLabel">Mode Of Payment :</td>
   <td valign="middle" class="cellInfo1"> <asp:RadioButton runat="server" ID="radcash" 
           Text="Cash" GroupName="Mode Of Payment" AutoPostBack="True" 
           oncheckedchanged="radcash_CheckedChanged1" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       <asp:RadioButton runat="server" ID="radCheque" Text="Cheque" 
           GroupName="Mode Of Payment" AutoPostBack="True" 
           oncheckedchanged="radCheque_CheckedChanged1" /></td>
   <td valign="middle" class="dvtCellLabel"> Purchase Amount : </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtcashamt" runat="server"  CssClass="textbox" Width="180px"></asp:TextBox></td>
   
   </tr>
  <tr>
   <td valign="middle" class="dvtCellLabel">Cheque No. :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtchequeno" runat="server" CssClass="textbox" Width="180px"></asp:TextBox></td>
   <td valign="middle"  class="dvtCellLabel">Bank & Branch :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtbankname" runat="server" CssClass="textbox" Width="180px"></asp:TextBox></td>
   </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; background-color:#DDDCDD">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" onclick="submit_Click" 
           />
   &nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click"/>
   
   </td>

   </tr>
   </table>
   </div>
   </center>
</asp:Content>

