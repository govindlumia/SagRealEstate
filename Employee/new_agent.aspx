<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="new_agent.aspx.cs" Inherits="new_agent" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <%--  <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js">
    </script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>--%>
     <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>

   
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />

     <link href="../css/drop.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/dropdon.js" type="text/javascript"></script>

   <link rel="../stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>





  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Add New Employee</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >
  
   <tr>
   <td colspan="4" style=" height:30px; padding-left:10px; font-size:13px">
   Employee Details
   </td>
   </tr>
   
    <tr>
   <%-- <td valign="middle" class="dvtCellLabeltop" style="width: 20%">USER NAME : </td>
    <td valign="middle" class="cellInfo">
    <asp:DropDownList ID="Ddlbranchname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    
    </asp:DropDownList>
   </td>--%>
   <td valign="middle" class="dvtCellLabeltop">EMPLOYEE NAME :</td>
   <td valign="middle" class="cellInfo"><asp:TextBox ID="Txtemplyname" runat="server" CssClass="textbox"></asp:TextBox></td>
    <td valign="middle" class="dvtCellLabel" style="width: 20%">MOBILE NO. :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtmob" runat="server" MaxLength="10" CssClass="textbox"></asp:TextBox>
   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txtmob"
    ErrorMessage="Please enter a 10 digit number(without std. code)" ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ControlToValidate="Txtmob" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
                    
                  </td>  
   </tr>

   <tr>
                                        
  
  <td valign="middle" class="dvtCellLabel">DATE OF JOINING:</td>
   <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="txtdate" runat="server" CssClass="textbox"></asp:TextBox>
   &nbsp;<asp:Image ID="Image1" runat="Server" ImageUrl="~/images/cal.gif" align="absmiddle" />                             
   <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="txtdate" />                                 
 </td>
    <td valign="middle" class="dvtCellLabel" style="width: 20%">SALARY : </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtagentsalary" runat="server" CssClass="textbox"></asp:TextBox>
  <asp:RegularExpressionValidator ID="RegularExvsal" runat="server" ControlToValidate="txtagentsalary"
                                                                    ErrorMessage="Only Numeric numbers are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorsal" runat="server" 
                             ControlToValidate="txtagentsalary" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
                      
   </td>
   </tr>
   <tr>
  <td valign="middle" class="dvtCellLabel">COMMISION / SQ. YRDS :</td>
  <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtagentcommision" runat="server"  CssClass="textbox"></asp:TextBox>
   <asp:RegularExpressionValidator ID="commision" runat="server" ControlToValidate="Txtagentcommision"
                                                                                 ErrorMessage="Only Numeric numbers are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
      
      <asp:RequiredFieldValidator ID="rfvcommision" runat="server" 
                             ControlToValidate="Txtagentcommision" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
       
      </td>                                                    


   <td valign="middle" class="dvtCellLabel" style="width: 20%">ADDRESS : </td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtaddress" runat="server" TextMode="MultiLine" CssClass="textbox" Height="70px"></asp:TextBox></td>
   <%--<td class="dvtCellLabel"></td>
   <td class="cellInfo1"></td>--%>
   
   
   </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; font-size:20px; color:#358ac2; background-color:#DDDCDD">
       <asp:Button ID="submit" CssClass="submit_botton1" runat="server" Text="Submit" onclick="submit_Click" />

      <asp:Button ID="reset" CssClass="submit_botton1" runat="server" Text="Reset"  OnClick="reset_Click" />
   <%--<asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" onclick="submit_Click"/>&nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click"/>--%>

   </td>
   </tr>
   </table>
   </div>
   </center>

</asp:Content>

