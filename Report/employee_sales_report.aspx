<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="employee_sales_report.aspx.cs" Inherits="Employee_employee_sales_report" Culture="en-GB" UICulture="en-GB"%>
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

  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Employee Sales Report</p>
  </div>

 <center>
 
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7% ">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >

   <tr style="border-top:1px solid #dedede;">
   <td valign="middle" class="dvtCellLabeltop">FROM : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
   <asp:TextBox ID="txtfromdate" runat="server" cssclass="textbox"></asp:TextBox>
                        <asp:Image runat="Server" ID="Image1" align="absmiddle" ImageUrl="~/images/cal.gif" />
                        <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true"
                            ControlToValidate="txtfromdate" Display="Dynamic" ErrorMessage="Enter From Date"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmv_fromdate" ControlToValidate="txtfromdate" Operator="DataTypeCheck"
                            Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <ajax:CalendarExtender ID="calendarextender3" runat="server" TargetControlID="txtfromdate"
                            Format="dd/MM/yyyy" PopupButtonID="image1" />

   </td>
   <td valign="middle" class="dvtCellLabeltop">TO : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
      <asp:TextBox ID="txttodate" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:Image runat="Server" ID="Image2" ImageUrl="~/images/cal.gif" />
                        <asp:RequiredFieldValidator ID="rfv_todate" runat="server" ControlToValidate="txttodate"
                            Display="Dynamic" ErrorMessage="Enter To Date" SetFocusOnError="true"></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="cmv_todate2" ControlToValidate="txttodate" ControlToCompare="txtfromdate"
                            Type="Date" Operator="GreaterThanEqual" Display="Dynamic" ErrorMessage="This Date cannot be less than from date"
                            runat="server" SetFocusOnError="true"></asp:CompareValidator>
                        <ajax:CalendarExtender ID="calendarextender2" runat="server" TargetControlID="txttodate"
                            Format="dd/MM/yyyy" PopupButtonID="image2" />

  
 </td>
 </tr>

 <tr>
 <%--<td valign="middle" class="dvtCellLabel">SELECT BRANCH : </td>
   <td valign="middle" class="cellInfo1" style="width:350px">
   <asp:DropDownList ID="Ddlbranchname" runat="server" Width="250px" BorderWidth="1px" 
           BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown" 
           AutoPostBack="True" onselectedindexchanged="Ddlbranchname_SelectedIndexChanged">
    
    </asp:DropDownList> </td>--%>
   <td valign="middle" class="dvtCellInfotop">SELECT ALL EMPLOYEE : </td>
   <td valign="middle" class="cellInfo" style="width:350px;">
     <asp:DropDownList ID="Ddlagent" runat="server" Width="250px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" style=" border-width:1px;height:26px;padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px">
    </asp:DropDownList>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel" colspan="4" style="padding-bottom:0px; text-align:center; padding-bottom:7px">
   
       <asp:Button ID="ImageButton1" CssClass="submit_botton2"  runat="server" Text="Submit" onclick="ImageButton1_Click" />
 <%--  <asp:ImageButton ID="ImageButton1" runat="server" 
           ImageUrl="~/images/submitButton.png" onclick="ImageButton1_Click"/>&nbsp;&nbsp;--%>
 
   </td>

   <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 <div class="mGrid1"  Width="100%" id="gridCustomers" style="border-collapse:collapse; padding-top:0px; text-align:left">
                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="false" Width="100%" 

                                EmptyDataText ="No Data found for the criteria you selected." 
                            
                           
                             CssClass="mGrid1"
            PagerStyle-CssClass="pgr"
                           > 
                                
                         <Columns >
                                                
                        
                          
                              <asp:BoundField DataField ="project_name" HeaderText ="PROJECT NAME"/>
                              <asp:BoundField DataField ="agent_name" HeaderText ="EMPLOYEE NAME"/>
                              <asp:BoundField DataField ="noofplot" HeaderText ="TOTAL PLOT SALE"/>
                              <asp:BoundField DataField ="t_commission" HeaderText ="TOTAL COMMISSION"/>
                               
                                                       
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

