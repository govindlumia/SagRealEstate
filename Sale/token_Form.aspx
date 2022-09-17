<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="token_Form.aspx.cs" Inherits="Sale_token_Form" Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
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



    <center>
  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Token Form </p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:100%">
<table width="98%" cellpadding="0" cellspacing="0" class="big"  >
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; text-align:center">
   Enter Token Details 
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabeltop"><b style="color:Red">*</b>Project Name : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="ddlselectproject" runat="server" Width="220px" 
           BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd"  
           CssClass="dropdown" >
       <asp:ListItem>Select Project</asp:ListItem>
    
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true" InitialValue="0"
                            ControlToValidate="ddlselectproject" Display="Dynamic" ErrorMessage="Select Project Name" style="font-size:8px"></asp:RequiredFieldValidator>
    
   </td>
  <td class="dvtCellLabel"> Block :</td><td  valign="middle" class="cellInfo1">
  <asp:TextBox ID="Txt_Block" runat="server" CssClass="textbox"></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidatr1" runat="server" SetFocusOnError="true" 
                            ControlToValidate="Txt_Block" Display="Dynamic" ErrorMessage="Enter Block Name" style="font-size:8px"></asp:RequiredFieldValidator>  
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
  <td valign="middle" class="dvtCellLabel"><b style="color:Red">*</b>Plot No. :</td>
    <td valign="middle" class="cellInfo1"> 
        &nbsp; <%--<asp:DropDownList ID="ddl_plotno" runat="server" Width="220px" 
           BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd"  
           CssClass="dropdown" AutoPostBack="True" 
           >
             <asp:ListItem>----------Select Plot----------</asp:ListItem>
    
             <asp:ListItem></asp:ListItem>
    
    </asp:DropDownList>--%>
      <asp:TextBox ID="Txt_Plot" runat="server" CssClass="textbox"></asp:TextBox>

     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" SetFocusOnError="true" 
                            ControlToValidate="Txt_Plot" Display="Dynamic" ErrorMessage="Select Plot No" style="font-size:8px"></asp:RequiredFieldValidator>
    
     
       
       </td>
<td  valign="middle" class="cellInfo1">
    &nbsp;</td>
      <td class="cellInfo1"><asp:Label ID="lblMsg" ForeColor="red" runat ="server" Visible ="false" style="font-size:8px"></asp:Label></td>
  </tr>
 
   <tr>
   <td valign="middle" class="dvtCellLabel">Referred By : </td>
   <td valign="middle" class="cellInfo1"> 
   <asp:RadioButton runat="server" 
                    ID="RBTEMP" 
                    Text="EMPLOYEE" 
                    GroupName="CASE" 
                    oncheckedchanged="RBTEMP_CheckedChanged" 
                    AutoPostBack="True"/>

           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

   <asp:RadioButton   runat="server" 
                       ID="RBTAGENT" 
                       Text="AGENT" 
                       GroupName="CASE" 
                       oncheckedchanged="RBTAGENT_CheckedChanged" 
                       AutoPostBack="True" /></td>
  
   <td valign="middle" class="dvtCellLabel">Employee : </td>
   <td valign="middle" class="cellInfo1">
   <asp:DropDownList ID="DdlEMPLOYEE" runat="server" Width="220px" BorderWidth="1px" 
           BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown" 
          >
   </asp:DropDownList>

   </td>
   
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel" >Agent Name : </td>
   <td valign="middle" class="cellInfo1" >
   <asp:DropDownList ID="ddlagentname" runat="server" Width="220px" BorderWidth="1px" 
           BorderStyle="Solid" BorderColor="#dddddd"  CssClass="dropdown" 
           onselectedindexchanged="ddlagentname_SelectedIndexChanged" 
           AutoPostBack="True">
   </asp:DropDownList>
  
   </td>
   <td valign="middle" class="dvtCellLabel">Agent Pancard No :</td>
   <td valign="middle" class="cellInfo1">
   <asp:DropDownList ID="ddl_agent_pancard" runat="server" Width="220px" BorderWidth="1px" 
           BorderStyle="Solid" BorderColor="#dddddd"  CssClass="dropdown">
       <asp:ListItem>Select Pancard No</asp:ListItem>
   </asp:DropDownList>
  
          </td>
   </tr>
  
  
   
   

   

    
    
 
   <tr>
   
   
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px;">
   Enter Customer Details 
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Registrant Name :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtcustomername" runat="server" CssClass="textbox"></asp:TextBox></td>
  <td valign="middle"  class="dvtCellLabel"><asp:DropDownList ID="ddlco" runat="server" Width="100px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
 <asp:ListItem>S/O</asp:ListItem>
  <asp:ListItem>D/O</asp:ListItem>
 <asp:ListItem>W/O</asp:ListItem>
 <asp:ListItem>C/O</asp:ListItem>

 
   </asp:DropDownList></td>
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
   <td valign="middle" class="dvtCellLabel">Agreement Date :</td>
 <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="txtagdate" runat="server" CssClass="textbox"></asp:TextBox>
                              
   <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="txtagdate" TargetControlID="txtagdate" />                                 
 </td>
   <td valign="middle" class="dvtCellLabel">Rate/Sq.Yrds :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtratesqyard" runat="server" 
           CssClass="textbox"></asp:TextBox></td>
   
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel">Plot Size :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotsize" runat="server" 
           CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">&nbsp;</td>
   <td valign="middle" class="cellInfo1">&nbsp;</td>
   
   </tr>
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px;">
   Enter Payment Details 
   </td>
   </tr>
   
   <%--<tr>
   <td valign="middle" class="dvtCellLabel">Rest Amount :</td>
   <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="Txtrestamt" runat="server" CssClass="textbox"></asp:TextBox>
         </td>
        

    <td valign="middle" class="dvtCellLabel">EMI Amount :</td>
   <td valign="middle" class="cellInfo1">
       <asp:TextBox ID="Txtemiamt" runat="server"  CssClass="textbox"></asp:TextBox></td>
   
   </tr>--%>

   <tr>
   <td valign="middle" class="dvtCellLabel">Mode Of Payment :</td>
   <td valign="middle" class="cellInfo1">
    <asp:RadioButton runat="server" ID="radcash" Text="Cash" 
           GroupName="Mode Of Payment" AutoPostBack="True" 
           oncheckedchanged="radcash_CheckedChanged"  /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       <asp:RadioButton runat="server" ID="radCheque" Text="Cheque" 
           GroupName="Mode Of Payment" AutoPostBack="True" 
           oncheckedchanged="radCheque_CheckedChanged" /></td>
   <td valign="middle" class="dvtCellLabel">Amount :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtcashamt" runat="server"  CssClass="textbox"></asp:TextBox></td>
   
   </tr>

    <tr>
   <td valign="middle" class="dvtCellLabel">Cheque No. <b style="padding-left:50px"> : </b></td>
   <td valign="middle"  class="cellInfo1"><asp:TextBox ID="Txtchequeno" runat="server"  CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Bank & Branch<b style="padding-left:35px"> : </b></td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtbankname" runat="server" CssClass="textbox"></asp:TextBox></td>
   </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center;">
       <asp:Button ID="submit" CssClass="submit_botton1" runat="server" Text="Submit"  onclick="submit_Click" />
       <asp:Button ID="reset" CssClass="submit_botton1" runat="server" Text="Reset" onclick="reset_Click" />
 <%--  <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click" CausesValidation="False" />
   &nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click" CausesValidation="False"/>--%>
   <br /><br />
   </td>
   </tr>
   </table>
   </div>
   </center>
   </center>
</asp:Content>
