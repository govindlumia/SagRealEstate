<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="new_project.aspx.cs" Inherits="new_project" %>
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

   
   <script type="text/javascript">
       function camelcase(input, ctrl) {
           var s = input;

           var result = s.replace(/(?:^|\s)\w/g, function (match) {
               return match.toUpperCase();
           });

           document.getElementById(ctrl).value = result;

       }
</script>
    
   
   
   <link rel="stylesheet" type="text/css" href="../css/menu_style.css" /><script type="text/javascript" src="../Jscript/mtmv.js"></script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

<div class="detailedViewHeader">
  <p class="lvtHeaderText">Add New Project Details</p>
  </div>

    <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:100%">
<table width="98%" cellpadding="0" cellspacing="0" class="big" >

<tr>
    <td valign="middle" class="dvtCellLabeltop">Project Name :</td>
    <td valign="middle" class="cellInfo" style="width:350px"><asp:TextBox ID="txtprojectname" runat="server"  CssClass="textbox" onBlur="camelcase(this.value, this.id)"/></td>
    <td valign="middle" class="dvtCellLabeltop">Project Location :</td>
    <td valign="middle" class="cellInfo"><asp:TextBox ID="txtprojeclocation" runat="server" CssClass="textbox" onBlur="camelcase(this.value, this.id)"/></td>
   </tr>


   
   <tr>
   <td valign="middle" class="dvtCellLabel">No. Of Blocks :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtblock" runat="server" CssClass="textbox"></asp:TextBox>
   <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtblock"
      ErrorMessage="Only Numeric numbers are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ControlToValidate="txtblock" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
  
  </td>
    <td valign="middle" class="dvtCellLabel">No. Of Plots :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txt_no_of_plot" runat="server" CssClass="textbox"></asp:TextBox>
  <br /><asp:RegularExpressionValidator ID="RegularExvsal" runat="server" ControlToValidate="txt_no_of_plot"
      ErrorMessage="Only Numeric numbers are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorsal" runat="server" 
                             ControlToValidate="txt_no_of_plot" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
  </td>
   
  
   </tr>
   <tr>
   
    <td valign="middle" class="dvtCellLabel">Billing Company :</td>
   <td valign="middle" class="cellInfo1" ><asp:TextBox ID="txtblng" runat="server" CssClass="textbox" onBlur="camelcase(this.value, this.id)"/></td>
   
   <td valign="middle" class="cellInfo1" colspan="2">

   </td>
  
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel" colspan="4" style="padding-bottom:0px; text-align:center; padding-top:15px; padding-bottom:15px">
       <asp:Button ID="submit" CssClass="submit_botton1" runat="server" Text="Submit" onclick="submit_Click" />
   <%--<asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/SubmitButton.png" onclick="submit_Click"/>--%>
   </td>
   </tr>
   </table>

   
</div>
</center>
</asp:Content>

