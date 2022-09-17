<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="monthly_report.aspx.cs" Inherits="monthly_report" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <link rel="stylesheet" type="text/css" href="../css/menu_style.css" /><script type="text/javascript" src="../Jscript/mtmv.js"></script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Monthly Report</p>
  </div>

 <center>
 
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7% ">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >

   <tr>
   <td valign="middle" class="dvtCellLabeltop">From : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
    <asp:TextBox ID="txtfromdate" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:Image runat="Server" ID="image1" align="absmiddle" ImageUrl="~/images/cal.gif" />
                        <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true"
                            ControlToValidate="txtfromdate" Display="Dynamic" ErrorMessage="Enter From Date"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmv_fromdate" ControlToValidate="txtfromdate" Operator="DataTypeCheck"
                            Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <ajax:CalendarExtender ID="calendarextender3" runat="server" TargetControlID="txtfromdate"
                            Format="dd/MM/yyyy" PopupButtonID="image1" />

   </td>
   <td valign="middle" class="dvtCellLabeltop">To :</td>
   <td valign="middle"  class="cellInfo" style="width:350px">
    <asp:TextBox ID="txttodate" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:Image runat="Server" ID="Image2" ImageUrl="~/images/cal.gif" />
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

 <%--<tr>
  
   <td valign="middle" class="dvtCellLabel">Branch Name : </td>
   <td valign="middle" class="cellInfo1" style="width:350px">
   <asp:DropDownList ID="Ddlbranchname" runat="server" Width="250px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    
    </asp:DropDownList>
    
     </td>
     <td valign="middle" class="dvtCellLabel"></td>
     <td valign="middle" class="cellInfo1" style="width:350px"></td>
   </tr>--%>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:0px; padding-top:5px; text-align:center; font-size:20px; color:#358ac2">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png"/>&nbsp;&nbsp;
  
   </td>

   </tr>

   <tr>
   <td colspan="4" style="padding-top:0px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 <div class="mGrid1" id="Div1" style="width:100%; border-collapse:collapse; padding-top:0px; text-align:center">
     <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None" AllowPaging ="False" Width="100%" EmptyDataText ="No lead found for the criteria you selected." 
                           CssClass="mGrid" e-CssClass="pgr"> 
                                
                         <Columns >
                       <%--  <asp:TemplateField  HeaderText ="Action">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>--%>
                          
                      
                         
                        
           
                                 <asp:BoundField DataField ="branch_name" HeaderText ="BRNCH NAME"/>
                                 <asp:BoundField DataField ="agent_name" HeaderText ="TOTAL SALE"/>
                                 <asp:BoundField DataField ="mobile_no" HeaderText ="TOTAL EXPENSE"/>
                                 <asp:BoundField DataField ="from_date" HeaderText ="FROM"/>
                                 <asp:BoundField DataField ="to_date" HeaderText ="TO"/>
                                               
                                                       
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

