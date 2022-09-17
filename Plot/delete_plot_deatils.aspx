<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="delete_plot_deatils.aspx.cs" Inherits="Plot_delete_plot_deatils" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css"  href="../themes/softed/style.css">
  <%--  <link rel="stylesheet" href="../css/MenuMatic.css" type="text/css" media="screen" charset="utf-8" />--%>
 <%--<script type ="text/javascript" >
     function displayLoadingImage() {
         var imgLoading = document.getElementById("<%=imgLoading.ClientID%>");

         imgLoading.style.visibility = "visible";

     }
 </script>--%>
<script type ="text/ecmascript" >
    var _Page = '0';
    var _StartsWith = 'All';

    var _SearchText = '';

    function NavigateToLetter(ltr) {

        _Page = 0;
        _StartsWith = ltr;

        DoNavigate();

        //        alert(url);
        //        return;
    }
    function DoNavigate() {
        var url = 'leadReport.aspx'

        url = url + '?firstname=' + _StartsWith;

        location.href = url;
    }


    

</script>
   <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

<div class="detailedViewHeader">
  <p class="lvtHeaderText">Delete Plot Details</p>
  </div>

 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >

 <tr>
   <td valign="middle" class="dvtCellLabeltop">Project Name :</td>
    <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="ddlselectproject" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    </asp:DropDownList>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" SetFocusOnError="true" InitialValue="0"
                            ControlToValidate="ddlselectproject" Display="Dynamic" ErrorMessage="Please Select a Project"></asp:RequiredFieldValidator>
  
   </td>
   <td valign="middle" class="dvtCellLabeltop"> </td>
   <td valign="middle"  class="cellInfo"> <asp:Label ID="lblMsg" runat ="server" Visible ="false"></asp:Label>  
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Block :</td>
   <td valign="middle" class="cellInfo1" style="width:350px"><asp:TextBox ID="txtblock" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtblock" Display="Dynamic" ErrorMessage="Enter Correct value"></asp:RequiredFieldValidator>
   
   </td>
    <td valign="middle" class="dvtCellLabel">Plot  No. :</td>
   <td valign="middle" class="cellInfo1" style="width:350px; padding-top:15px"><asp:TextBox ID="Txtplotno" runat="server" CssClass="textbox"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidatorsal" runat="server" 
                             ControlToValidate="Txtplotno" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
   </td>
  
   </tr>

   <tr>
   <td valign="middle"   colspan="4" style="padding-bottom:0px; text-align:center; padding-top:10px; padding-bottom:5px;background-color:#DDDCDD;">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/delete.png" 
           onclick="submit_Click" />&nbsp;&nbsp;
 
   </td>
   </tr>

   <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   </table>
   </td>
   </tr>

   </table>
</div>

   
   
    </center>
     
   
</asp:Content>

