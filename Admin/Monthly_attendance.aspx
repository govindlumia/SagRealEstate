<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="Monthly_attendance.aspx.cs" Inherits="Monthly_attendance" Culture ="en-GB" UICulture ="en-GB"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <script type ="text/javascript" >
        function displayLoadingImage() {
            var imgLoading = document.getElementById("<%=imgLoading.ClientID%>");

            imgLoading.style.visibility = "visible";

        }
 </script>
    <link rel="stylesheet" type="text/css"  href="../themes/softed/style.css">
    <div class="detailedViewHeader">
  <p class="lvtHeaderText">Monthly Attendance Sheet</p>
  </div>
   <div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">
<table width="100%" cellpadding="0" cellspacing="0" class="big">

 <tr>
   <td valign="middle" class="dvtCellLabeltop">Select Month :</td>
    <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="ddlMonth" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
   
<asp:ListItem Value="0">&lt;--Select--&gt;</asp:ListItem>
<asp:ListItem Value="1">Jan</asp:ListItem>
 <asp:ListItem Value="2">Feb</asp:ListItem>
<asp:ListItem Value="3">Mar</asp:ListItem>
<asp:ListItem Value="4">Apr</asp:ListItem>
<asp:ListItem Value="5">May</asp:ListItem>
<asp:ListItem Value="6">June</asp:ListItem>
<asp:ListItem Value="7">July</asp:ListItem>
<asp:ListItem Value="8">Aug</asp:ListItem>
<asp:ListItem Value="9">Sep</asp:ListItem>
<asp:ListItem Value="10">Oct</asp:ListItem>
<asp:ListItem Value="11">Nov</asp:ListItem>
<asp:ListItem Value="12">Dec</asp:ListItem>
</asp:DropDownList>

   </td>
   <td valign="middle" class="dvtCellLabeltop">Select Branch Name : </td>
   <td valign="middle"  class="cellInfo">
    <asp:DropDownList ID="Ddlbranchname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
   </asp:DropDownList>
   </td>
   </tr>
  
   <td valign="middle" class="dvtCellLabel" colspan="4" style="padding-bottom:0px; text-align:center; padding-top:15px; padding-bottom:0px">
   <asp:RequiredFieldValidator ID="rfvMonth" runat="server" 
 ControlToValidate="ddlMonth" ErrorMessage="Select Month"  InitialValue="0" SetFocusOnError="True"></asp:RequiredFieldValidator>
   <asp:Button ID="btnView" runat =server Text ="View" OnClientClick ="return displayLoadingImage();" onclick="btnView_Click" 
 Width="115px"/>
 <asp:Image ImageUrl="~/images/rotation.gif"  runat="server"  id="imgLoading" style="Z-INDEX: 101; LEFT: 524px; VISIBILITY:hidden ;  POSITION: absolute; TOP: 240px; width: 60px;"/>	
 <asp:Label ID="lblMSg" runat="server" Font-Bold="False" ForeColor="Red"  Visible="False"></asp:Label>
 
   </td>
   </tr>  
 
 <tr>
 <asp:UpdatePanel ID="UP1" runat="server" UpdateMode="Conditional">
<ContentTemplate>
 </ContentTemplate>
 </asp:UpdatePanel>
 </tr>

<tr>
<td colspan="4">
  <div class="mGrid1" cellspacing="0" rules="cols" border="1" id="gridCustomers" style="width:100%;border-collapse:collapse; text-align:center">
<asp:GridView ID="GridView1" runat="server" GridLines =None Width =100% 
 EmptyDataText ="No request found for the criteria you selected." ShowFooter="True">
 <Columns>
 <asp:TemplateField HeaderText="Sno">
 <ItemTemplate>
 <%#Container.DataItemIndex+1 %>
 </ItemTemplate>
 </asp:TemplateField>
 </Columns>
   </asp:GridView>
</div>
</td></tr>
</table>
 
</div>
 </asp:Content>
