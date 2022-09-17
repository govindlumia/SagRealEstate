<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="emi_reminder.aspx.cs" Inherits="EMI_emi_reminder" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" type="text/css"  href="../themes/softed/style.css">
  <%--  <link rel="stylesheet" href="../css/MenuMatic.css" type="text/css" media="screen" charset="utf-8" />--%>
 <%--<script type ="text/javascript" >
     function displayLoadingImage() {
         var imgLoading = document.getElementById("<%=imgLoading.ClientID%>");

         imgLoading.style.visibility = "visible";

     }
 </script>--%>
 <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
     <link href="../css/drop.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/dropdon.js" type="text/javascript"></script>
   <link rel="../stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>


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


<div class="detailedViewHeader">
  <p class="lvtHeaderText">EMI Reminder List</p>
  </div>

 <center style="width:100%">
<div class="dvtContentSpace" style="padding:10px 10px 10px 10px;width:97.7%;" >
<table width="100%" cellpadding="0" cellspacing="0" class="big" >

<tr style="border-top:1px solid #dedede;">
   <td valign="middle" class="dvtCellLabeltop">From : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
   <asp:TextBox ID="txtfromdate" runat="server" Cssclass="textbox"></asp:TextBox>
                        <asp:Image runat="Server" ID="Image1" align="absmiddle" ImageUrl="~/images/cal.gif" />
                        <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true"
                            ControlToValidate="txtfromdate" Display="Dynamic" ErrorMessage="Enter From Date"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmv_fromdate" ControlToValidate="txtfromdate" Operator="DataTypeCheck"
                            Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <ajax:CalendarExtender ID="calendarextender3" runat="server" TargetControlID="txtfromdate"
                            Format="dd/MM/yyyy" PopupButtonID="Image1" />

   </td>
   <td valign="middle" class="dvtCellLabeltop">To : </td>
   <td valign="middle" class="cellInfo">
      <asp:TextBox ID="txttodate" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:Image runat="Server" ID="Image2" ImageUrl="~/images/cal.gif" />
                        <asp:RequiredFieldValidator ID="rfv_todate" runat="server" ControlToValidate="txttodate"
                            Display="Dynamic" ErrorMessage="Enter To Date" SetFocusOnError="true"></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="cmv_todate2" ControlToValidate="txttodate" ControlToCompare="txtfromdate"
                            Type="Date" Operator="GreaterThanEqual" Display="Dynamic" ErrorMessage="This Date cannot be less than from date"
                            runat="server" SetFocusOnError="true"></asp:CompareValidator>
                        <ajax:CalendarExtender ID="calendarextender2" runat="server" TargetControlID="txttodate"
                            Format="dd/MM/yyyy" PopupButtonID="Image2" />

  
 </td>
 </tr>

   <tr width="100%">
   <td valign="middle" class="dvtCellLabel" colspan="4" style="padding-bottom:0px; text-align:center; padding-top:1px; padding-bottom:1px">
   <asp:Button ID="View" CssClass="submit_botton2" runat="server" Text="View" onclick="View_Click"     CausesValidation="False" />
   </td>
   </tr>

   <tr width="100%">
   <td colspan="4" style="padding-top:15px" width="100%">
  <table style="width:100%" cellpadding="0" cellspacing="0" class="big" style="margin-top:-15px;" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop" >
 
 <div class="mGrid1"    id="gridCustomers" style="width:100%;border-collapse:collapse; padding-top:0px; text-align:center;" >
                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="False" Width="100%"
                       EmptyDataText ="No Project found for the criteria you selected." 
                  CssClass="mGrid" PagerStyle-CssClass="pgr"> 
                                
                         <Columns >
                                          
                 <asp:BoundField DataField ="project_name" HeaderText ="Project Name"/>
                  <asp:BoundField DataField ="plot_no" HeaderText ="Plot No"/>
                  <asp:BoundField DataField ="registrant_name" HeaderText ="Registrant"/>
                  <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile"/>
                  <asp:BoundField DataField ="plot_cost" HeaderText ="Plot Cost"/>
                  
                  <asp:BoundField DataField ="rest_amount" HeaderText ="Rest Amt"/>
                  <asp:BoundField DataField ="emi_amount" HeaderText ="Emi Amt"/>
                 
                  <asp:BoundField DataField ="emi_date" HeaderText ="EMI (Dues Payment) date"/>
          
                         </Columns>
                            


                         </asp:GridView>
        		           
			           </div>

 </td>
  
 </tr>

  </table>
   </td>
   </tr>

   </table>
</div>

   
   
    </center>

 
     
   
</asp:Content>

