<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="booking_cancel.aspx.cs" Inherits="booking_cancel" %>
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



  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Plot Cancellation Entry</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Cancellation Details 
   </td>
   </tr>

  <tr>
   <td valign="middle" class="dvtCellLabeltop">Project Name : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="ddlselectproject" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true" 
                            ControlToValidate="ddlselectproject" Display="Dynamic" ErrorMessage="Enter Project Name"></asp:RequiredFieldValidator>
    
   </td>
   <td valign="middle" class="dvtCellLabeltop">Block :</td>
   <td valign="middle" class="cellInfo"><asp:TextBox ID="txtblock" runat="server" CssClass="textbox"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                             ControlToValidate="txtblock" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
</td>
   </tr>

 <tr>
    <td valign="middle" class="dvtCellLabel">Plot No. :</td>
   <td valign="middle" class="cellInfo1" style="width:350px"><asp:TextBox ID="Txtplotno" runat="server" CssClass="textbox"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" SetFocusOnError="true" 
                            ControlToValidate="Txtplotno" Display="Dynamic" ErrorMessage="Enter Plot No"></asp:RequiredFieldValidator>

  
  
   </td>
   <td valign="middle" class="dvtCellLabel"><asp:Button ID="Button2" CssClass="submit_botton3" runat="server" Text="Submit" 
         onclick="Button1_Click1"  /> 
         <asp:Label ID="lblMsg" ForeColor="red" runat ="server" Font-Bold ="false"  Visible="false"></asp:Label>
</td>
   <td valign="middle" class="cellInfo1"></td>
 </tr>

 <tr>
 <td colspan="4" class="dvtCellLabel" style="text-align:center; padding-bottom:10px; padding-top:10px">
    <%-- <asp:Button ID="Button1" runat="server" Text="Submit"  Width="70px" 
         onclick="Button1_Click1"  /> 
         <asp:Label ID="lblMsg" ForeColor="red" runat ="server" Font-Bold ="false"  Visible="false"></asp:Label>--%>
         
          </td>
 </tr>

<tr> <td style="background-color:#B6B6B4; border:null" ></td> <td style="background-color:#B6B6B4;border:null">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="ddlselectproject" ErrorMessage="* Select Field"></asp:RequiredFieldValidator>
     </td> <td style="background-color:#B6B6B4;border:null"></td><td style="background-color:#B6B6B4;border:null">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtplotno" ErrorMessage="* Required Plot No"></asp:RequiredFieldValidator>
       </td> </tr>
   <tr>
   
   <td valign="middle" class="dvtCellLabel">Date :</td>
   <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="txtdate" runat="server" CssClass="textbox"></asp:TextBox>
   &nbsp;<asp:Image ID="Image1" runat="Server" ImageUrl="~/images/cal.gif" align="absmiddle" />                             
   <ajaxtoolkit:calendarextender ID="calendarextender3" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="txtdate" />
   </td>
   <td valign="middle" class="dvtCellLabel"></td>
   <td valign="middle" class="cellInfo1">
  
   
    </td>
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
   REASON OF CANCELLATION:
   </td>
   </tr>

   <tr>
   <td valign="middle" colspan="4" class="dvtCellLabel" style="padding-left:140px"> 
   <asp:TextBox ID="txtcancelreason" runat="server" TextMode="MultiLine" CssClass="textbox" Width="700px" Height="70px"></asp:TextBox><br />
    </td>
   </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center;">
       <asp:Button ID="submit" CssClass="submit_botton1" runat="server" Text="Submit" 
           onclick="submit_Click1" />
       <asp:Button ID="reset" CssClass="submit_botton1" runat="server" Text="Reset" />
  <%-- <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click"/>
   &nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png"/>
   --%>
   </td>

   </tr>
   </table>
   </div>
   </center>
</asp:Content>

