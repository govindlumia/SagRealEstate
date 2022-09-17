<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="visitor_report.aspx.cs" Inherits="Day_Report_visitor_report" Culture="en-GB" UICulture="en-GB" %>
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
  <p class="lvtHeaderText">Visitor Report</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7% ">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >

   <tr>
    <td valign="middle" class="dvtCellLabeltop">Branch Name : </td>
   <td valign="middle" class="cellInfo">
   <asp:DropDownList ID="Ddlbranchname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd"  CssClass="dropdown">
    
    </asp:DropDownList> </td>
   <td valign="middle" class="dvtCellLabeltop"> </td>
   <td valign="middle" class="cellInfo">
 
   </td>
  
   </tr>

 <tr>
   <td valign="middle" class="dvtCellLabel">FROM : </td>
   <td valign="middle" class="cellInfo1">
    <asp:TextBox ID="txtfromdate" runat="server"  CssClass="textbox"></asp:TextBox>
                        <asp:Image runat="Server" ID="image1" align="absmiddle" ImageUrl="~/images/cal.gif" />
                        <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true"
                            ControlToValidate="txtfromdate" Display="Dynamic" ErrorMessage="Enter From Date"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmv_fromdate" ControlToValidate="txtfromdate" Operator="DataTypeCheck"
                            Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <ajax:CalendarExtender ID="calendarextender3" runat="server" TargetControlID="txtfromdate"
                            Format="dd/MM/yyyy" PopupButtonID="image1" />

   </td>
   <td valign="middle" class="dvtCellLabel">TO :</td>
   <td valign="middle" class="cellInfo1">
    <asp:TextBox ID="txttodate" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:Image runat="Server" ID="Image2" ImageUrl="~/images/cal.gif" /><br />
                        <asp:RequiredFieldValidator ID="rfv_todate" runat="server" ControlToValidate="txttodate"
                            Display="Dynamic" ErrorMessage="Enter To Date" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmv_todate" ControlToValidate="txttodate" Operator="DataTypeCheck"
                            Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <asp:CompareValidator ID="cmv_todate2" ControlToValidate="txttodate" ControlToCompare="txtfromdate"
                            Type="Date" Operator="GreaterThanEqual" Display="Dynamic" ErrorMessage="This Date cannot be less than from date"
                            runat="server" SetFocusOnError="true"></asp:CompareValidator>
                        <ajax:CalendarExtender ID="calendarextender2" runat="server" TargetControlID="txttodate"
                            Format="dd/MM/yyyy" PopupButtonID="image2" />

   </td>
 </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:3px; padding-top:7px; text-align:center; background-color:#DDDCDD">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click1"/>&nbsp;&nbsp;
  
   </td>
   </tr>

   <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
 <tr>
 <td valign="middle" class="dvtCellLabeltop">
 <div class="mGrid1" id="gridCustomers" style="width:100%;border-collapse:collapse; padding-top:0px; text-align:center">
       <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None" AllowPaging ="True" Width="100%"
             CssClass="mGrid" PagerStyle-CssClass="pgr" > 
                                
     <Columns>
   <%--  <asp:TemplateField  HeaderText ="Action">
     <ItemTemplate>
     <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="Update" ToolTip ="Click to Update" CausesValidation ="false"   /> 
                                                     
      </ItemTemplate>
      </asp:TemplateField>--%>
                          
                      
                           <asp:TemplateField HeaderText="s_no" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("s_no") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                         
                             <asp:BoundField DataField ="Branch_name" HeaderText ="Branch Name"/>
                             <asp:BoundField DataField ="Customer_name" HeaderText ="Customer Name"/>
                             
                             <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile No."/>
                             <asp:BoundField DataField ="address" HeaderText ="Address"/>
                             <asp:BoundField DataField ="agent_name" HeaderText ="Ref. Employee"/>
                            
                             <asp:BoundField DataField ="due_date" HeaderText ="Next Remind Date "/>
                          
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

