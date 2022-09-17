<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="sales_report.aspx.cs" Inherits="sales_report" Culture="en-GB" UICulture="en-GB" %>
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
  <p class="lvtHeaderText">Sales Report</p> <%--<td align ="right">
           <asp:Button ID="btnExcell" runat="server" Text ="Click Export as Excel" 
               Height="24px" onclick="btnExcell_Click" Font-Bold="True"/></td>--%>
  </div>

 <center>
 
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7% ">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >

   <tr style="border-top:1px solid #dedede;">
   <td valign="middle" class="dvtCellLabeltop">FROM : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
  <asp:TextBox ID="txtfromdate" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:Image runat="Server" ID="Image3" align="absmiddle" ImageUrl="~/images/cal.gif" />
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
     <asp:TextBox ID="txttodate" runat="server"   style="width:242px; border-width:1px; height:21px; padding: 2px 2px 2px 5px; color:black;font-size:12px; border-radius:5px; background-color:#f5f5f5; border:1px solid #e0e0e0"></asp:TextBox>
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

  <%-- <asp:TextBox ID="txtdate" runat="server" 
  style="width:242px; border-width:1px; height:21px; padding: 2px 2px 2px 5px; color:black; 
  font-size:12px; border-radius:5px; background-color:#f5f5f5; border:1px solid #e0e0e0"></asp:TextBox>
   <asp:Image ID="Image1" runat="Server" ImageUrl="~/images/cal.gif" align="absmiddle" />                             
   <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="txtdate" />   --%>                              
 </td>
 </tr>

 <tr>
 <td valign="middle" class="dvtCellLabel">SELECT PROJECT : </td>
   <td valign="middle" class="cellInfo1" style="width:350px">
   <asp:DropDownList ID="ddlselectproject" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
   
    </asp:DropDownList> </td>
   <td valign="middle" class="dvtCellLabel"> </td>
   <td valign="middle" class="cellInfo1" style="width:350px;">
   
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel" colspan="4" style="padding-bottom:0px; text-align:center; padding-bottom:7px">

       <asp:Button ID="ImageButton1" CssClass="submit_botton2"  runat="server" Text="Submit" onclick="submit_Click" />
<%--   <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/submitButton.png" onclick="submit_Click"/>&nbsp;&nbsp;--%>
 
   </td>

   <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 <div class="mGrid1"    id="Div1" style="width:100%;border-collapse:collapse; padding-top:0px; text-align:center">
                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="False" Width="100%"
                           ShowFooter= "true"
                       EmptyDataText ="No Project found for the criteria you selected." 
                  CssClass="mGrid" PagerStyle-CssClass="pgr" onrowdatabound="grdLead_RowDataBound" 
                             onrowcommand="grdLead_RowCommand" onrowdeleting="grdLead_RowDeleting" 
                             onselectedindexchanged="grdLead_SelectedIndexChanged"  > 
                           <FooterStyle BackColor="#CCCC99" HorizontalAlign="left" Font-Bold ="true" />        
                         <Columns >
                          <asp:TemplateField  HeaderText ="Pay" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="print"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>
                                                  <asp:TemplateField  HeaderText ="Edit">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>
                         <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("sno") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
<asp:TemplateField HeaderText="Sno.">
 <ItemTemplate>
 <%#Container.DataItemIndex+1 %>
 </ItemTemplate>
 </asp:TemplateField>
          <asp:BoundField DataField ="project_name" HeaderText ="Project"/>
          <asp:BoundField DataField ="block" HeaderText ="Block"/> 
           <asp:BoundField DataField ="plot_no" HeaderText ="Plot No"/>  
  <asp:BoundField DataField ="total_plot_area" HeaderText ="Area"/>  

           <asp:BoundField DataField ="CustomerId" HeaderText ="C.ID"/>    
           <asp:BoundField DataField ="registrant_name" HeaderText ="Customer"/>
          <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile"/>
        <%--  <asp:BoundField DataField ="invoice_no" HeaderText ="Invoice No"/>--%>
           <asp:BoundField DataField ="plot_cost" HeaderText ="Plot Cost"/>
           <asp:BoundField DataField ="booking_amount" HeaderText ="Recieve Amt"/>
             <asp:BoundField DataField ="rest_amount" HeaderText ="Balance Amt"/>
      
          <asp:BoundField DataField ="sale_date" HeaderText ="Sale Date"/>
                         <asp:TemplateField  HeaderText ="Delete" >
                                                <ItemTemplate>
                           <asp:ImageButton ID="imgInvoice3" ImageUrl ="../images/deletedata.png" runat="server" CommandName ="Delete" ToolTip ="Click to Delete" CausesValidation ="false"   /> 
                                                                   
                                                </ItemTemplate>

  </asp:TemplateField>             
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

