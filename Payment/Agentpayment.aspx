<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="Agentpayment.aspx.cs" Inherits="Payment_Agentpayment" %>

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
  <p class="lvtHeaderText">Agent Payment</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">
<table width="98%" cellpadding="0" cellspacing="0" class="big" >
  
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Enter Agent Payment 
   </td>
   </tr>


   <tr>
   <%-- <td valign="middle" class="dvtCellLabeltop">User Name : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="Ddlbranchname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    
    </asp:DropDownList> </td>--%>
   <td valign="middle" class="dvtCellLabeltop">Agent Name : </td>
   <td valign="middle" class="cellInfo">
   <asp:DropDownList ID="Ddlagent" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
   
    </asp:DropDownList>
   </td>
    <td valign="middle"  class="dvtCellLabel"><asp:Button ID="Button1" CssClass="submit_botton3" runat="server" Text="Submit" onclick="Button1_Click" 
            /></td>
   <td valign="middle" class="cellInfo1">
   
  <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Ddlmonth" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
  --%>
  
   </td>
   </tr>


   <tr>
   <td valign="middle" class="dvtCellLabel">Total Salary :</td>
   <td valign="middle" class="cellInfo1">
       <asp:TextBox ID="txtsal" runat="server" CssClass="textbox"></asp:TextBox>
       </td>
   <td valign="middle"  class="dvtCellLabel">Commission :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtcom" runat="server" CssClass="textbox"></asp:TextBox>
       </td>
   </tr>

    <tr>
    <td valign="middle" class="dvtCellLabel">Total Amount</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txttotalamount" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Month :</td>
   <td valign="middle"  class="cellInfo1"><asp:DropDownList ID="Ddlmonth" runat="server" Width="200px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" style=" border-width:1px;height:26px;padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px">
   <asp:ListItem Value="0">----- select month ------</asp:ListItem>
   <asp:ListItem Value="January">January</asp:ListItem>
   <asp:ListItem Value="February">February</asp:ListItem>
   <asp:ListItem Value="March">March</asp:ListItem>
   <asp:ListItem Value="April">April</asp:ListItem>
   <asp:ListItem Value="May">May</asp:ListItem>
   <asp:ListItem Value="June">June</asp:ListItem>
   <asp:ListItem Value="July">July</asp:ListItem>
   <asp:ListItem Value="August">August</asp:ListItem>
   <asp:ListItem Value="September">September</asp:ListItem>
   <asp:ListItem Value="October">October</asp:ListItem>
   <asp:ListItem Value="November">November</asp:ListItem>
   <asp:ListItem Value="December">December</asp:ListItem>
    </asp:DropDownList></td>
  
   </tr>

     <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:20px; font-size:15px; text-align:center; background-color:#DDDCDD">
    ENTER PAYMENT  DETAILS :
   </td>
   </tr>
     <tr>
   <td valign="middle" class="dvtCellLabel">Mode Of Payment :</td>
   <td valign="middle" class="cellInfo1"> <asp:RadioButton runat="server" ID="radcash" Text="Cash" GroupName="Mode Of Payment" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton runat="server" ID="radCheque" Text="Cheque" GroupName="Mode Of Payment" /></td>
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
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center;">

       <asp:Button ID="ImageButton1" CssClass="submit_botton1" runat="server" Text="Submit" onclick="ImageButton1_Click" />
    <%--<asp:ImageButton ID="ImageButton1" runat="server" 
           ImageUrl="~/images/submitButton.png" onclick="ImageButton1_Click"  />&nbsp;&nbsp;--%>
   <%--<asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png"/>--%>
   
   
   </td>

   </tr>

   </table>
</div>

</center>
</asp:Content>

