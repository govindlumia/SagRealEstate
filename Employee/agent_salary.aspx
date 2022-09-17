<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="agent_salary.aspx.cs" Inherits="Agent_agent_salary" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

    <div class="dvtContentSpace" class="shadow" style="width:100%;">
<table width="100%" style="font-family:Candara;font-size:14px; text-align:left;" >

   <tr >
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; font-size:20px; color:#224980;text-align:left" " >
   <p class="detailedViewHeader"  class="dvtCellLabeltop"style="text-shadow:2px 2px 2px #B7B7B7;margin-top:-10px;" class="lvtHeaderText" >Employee SALARY</p>
   </td>
   </tr>
   
   <tr>
    <td valign="middle"  class="dvtCellLabeltop" style="width:150px; padding-left:10px; padding-top:10px;"> Branch Name : </td>
    <td class="cellInfo" valign="middle" style="width:350px;  padding-top:10px">
    <asp:DropDownList ID="Ddlbranchname" runat="server" Width="250px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" style=" border-width:1px;height:26px;padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px;">
    
    </asp:DropDownList>
   </td>
    <td valign="middle"  class="dvtCellLabeltop" style="width:150px; padding-left:10px; padding-top:10px;">Employee Name :</td>
   <td  class="cellInfo" valign="middle" style="width:330px; padding-top:10px">
   <asp:DropDownList ID="Ddlagent" runat="server" Width="250px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" style=" border-width:1px;height:26px;padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px">
    
    </asp:DropDownList>
   </td>
   </tr>

   <tr>
   <td valign="middle"  class="dvtCellLabeltop" style="width:150px; padding-left:10px ;">Salary Month :</td>
   <td class="cellInfo" valign="middle"  style=" border-width:1px; height:21px; padding: 2px 2px 2px 0px; color:black; font-size:12px; border-radius:5px">
  <asp:DropDownList ID="DropDownList1" runat="server" Width="100px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" style=" border-width:1px;height:26px;padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px">
    <asp:ListItem>---- Month ----</asp:ListItem> 
   <asp:ListItem>Jan</asp:ListItem> 
   <asp:ListItem>Fab</asp:ListItem>
   <asp:ListItem>Mar</asp:ListItem>
   <asp:ListItem>Apr</asp:ListItem>
   <asp:ListItem>May</asp:ListItem>
   <asp:ListItem>Jun</asp:ListItem>
   <asp:ListItem>July</asp:ListItem>
   <asp:ListItem>Aug</asp:ListItem>
   <asp:ListItem>Sept</asp:ListItem>
   <asp:ListItem>Oct</asp:ListItem>
   <asp:ListItem>Nov</asp:ListItem>
   <asp:ListItem>Dec</asp:ListItem>
   <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    
    &nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:TextBox class="cellInfo1" ID="Txtyear" runat="server" placeholder="Year" style="width:100px; border-width:1px; height:21px; padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px; background-color:#f5f5f5; border:1px solid #e0e0e0"></asp:TextBox>
                                  
 </td>
   </tr>

   <tr>
   <td colspan="4" bgcolor="#c0c0c0"></td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabeltop" style="width:150px; padding-left:10px;">Total Salary :</td>
   <td class="cellInfo1" valign="middle"  style=" border-width:1px; height:21px; padding: 2px 2px 2px 0px; color:black; font-size:12px; border-radius:5px">
       <asp:TextBox ID="txtsal" runat="server"></asp:TextBox>
       </td>
   <td valign="middle"  class="dvtCellLabeltop" style="width:150px; padding-left:10px;">Commission :</td>
   <td class="cellInfo1" valign="middle"  style=" border-width:1px; height:21px; padding: 2px 2px 2px 0px; color:black; font-size:12px; border-radius:5px">
       <asp:TextBox ID="txtcom" runat="server"></asp:TextBox>
       </td>
   </tr>

   <tr class="detailedViewHeader">
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:20px; font-size:16px; color:#224980; text-align:center" >
   ENTER PAYMENT DETAILS :
   </td>
   </tr>
    <tr>
   <td valign="middle"  class="dvtCellLabeltop" style="width:150px; padding-left:10px; padding-top:10px;">Mode Of Payment :</td>
   <td class="cellInfo1" valign="middle" style="width:330px; padding-top:10px"> 
       <asp:RadioButton runat="server" ID="radcash" Text="Cash" 
           GroupName="Mode Of Payment"  /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton runat="server" ID="radCheque" Text="Cheque" GroupName="Mode Of Payment" /></td>
   <td valign="middle"  class="dvtCellLabeltop" style="width:150px; padding-left:10px; padding-top:10px;">Cash :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
   <td class="cellInfo1" valign="middle" style="width:330px; padding-top:10px"><asp:TextBox ID="Txtcashamt" runat="server" style="width:242px; border-width:1px; height:21px; padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px; background-color:#f5f5f5; border:1px solid #e0e0e0"></asp:TextBox></td>
   
   </tr>

    <tr>
   <td valign="middle"  class="dvtCellLabeltop"style="width:150px; padding-left:10px; padding-top:10px; ">Cheque No. <b style="padding-left:50px"> : </b></td>
   <td class="cellInfo1" valign="middle" style="width:350px; padding-top:10px"><asp:TextBox ID="Txtchequeno" runat="server" style="width:242px; border-width:1px; height:21px; padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px; background-color:#f5f5f5; border:1px solid #e0e0e0"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabeltop" style="width:150px; padding-left:10px; padding-top:10px;">Bank & Branch<b style="padding-left:35px"> : </b></td>
   <td class="cellInfo1" valign="middle" style="width:350px; padding-top:10px"><asp:TextBox ID="txtbankname" runat="server" style="width:242px; border-width:1px; height:21px; padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px; background-color:#f5f5f5; border:1px solid #e0e0e0"></asp:TextBox></td>
   </tr>

   <tr>
   <td class="detailedViewHeader" valign="middle" colspan="4" style="padding-bottom:10px; padding-top:20px; text-align:center; font-size:20px; color:#358ac2;height:20px;">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" onclick="submit_Click" 
           />&nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png"/>

   </td>
   </tr>
   </table>
   </div>
</asp:Content>

