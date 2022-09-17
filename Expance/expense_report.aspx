<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="expense_report.aspx.cs" Inherits="expense_report" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>

<div class="shadow" style="width:960px">
<table width="100%" style="font-family:Candara;font-size:14px; text-align:left;">

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; font-size:20px; color:#224980;">
   <p style="text-shadow:2px 2px 2px #B7B7B7">EXPENSE DETAILS REPORT</p>
   </td>
   </tr>

   <tr>
   <td valign="middle" style="width:150px; padding-left:10px">FROM : </td>
   <td valign="middle" style="width:350px">
    <asp:TextBox ID="txtfromdate" runat="server" style="width:242px; border-width:1px; height:21px;padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px; background-color:#f5f5f5; border:1px solid #e0e0e0"></asp:TextBox>
                        <asp:Image runat="Server" ID="image1" align="absmiddle" ImageUrl="~/images/cal.gif" />
                        <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true"
                            ControlToValidate="txtfromdate" Display="Dynamic" ErrorMessage="Enter From Date"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmv_fromdate" ControlToValidate="txtfromdate" Operator="DataTypeCheck"
                            Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <ajax:CalendarExtender ID="calendarextender3" runat="server" TargetControlID="txtfromdate"
                            Format="dd/MM/yyyy" PopupButtonID="image1" />

   </td>
   <td valign="middle" style="width:150px; padding-left:10px">TO :</td>
   <td valign="middle"  style=" border-width:1px; height:21px; padding: 2px 2px 2px 0px; color:black; font-size:12px; border-radius:5px">
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
  
   <td valign="middle" style="width:150px; padding-left:10px; padding-top:10px">Branch Name : </td>
   <td valign="middle" style="width:350px;  padding-top:10px">
   <asp:DropDownList ID="Ddlbranchname" runat="server" Width="250px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" style=" border-width:1px;height:26px;padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px">
    
    </asp:DropDownList>
    
     </td>
     <td></td><td></td>
   </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:0px; padding-top:20px; text-align:center; font-size:20px; color:#358ac2">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           />&nbsp;&nbsp;
  <%-- <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click"/><br /><br />--%>
   </td>

   </table>
</div>
   
   
</center>
<div class="mGrid1"   id="Div1" style="width:960px; border-collapse:collapse; padding-top:0px; text-align:center">
                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="False" Width="100%"

                                EmptyDataText ="No lead found for the criteria you selected." 
                            
                           
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr"
                           > 
                                
                         <Columns >
                       <%--  <asp:TemplateField  HeaderText ="Action">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>--%>
                          
                      
                         
                        
           
                                 <asp:BoundField DataField ="branch_name" HeaderText ="BRNCH NAME"/>
                                 <asp:BoundField DataField ="agent_name" HeaderText ="TOTAL EXPENSE"/>
                                 <asp:BoundField DataField ="mobile_no" HeaderText ="DATE"/>
                                
                                 <asp:BoundField DataField ="address" HeaderText ="REMARKS"/>
                                 <%--<asp:BoundField DataField ="commision" HeaderText ="Commision"/>--%>
                                <%--  <asp:BoundField DataField ="doj" HeaderText ="DOJ"/>--%>
                                <%-- <asp:BoundField DataField ="created_by" HeaderText ="Created By "/>--%>
                             <%--    <asp:BoundField DataField ="created_on" HeaderText ="Created Date"/>
                               --%>  
                                <%-- <asp:BoundField DataField ="agent_status" HeaderText ="Agent Status"/>  --%>                   
                                                       
                         </Columns>
                            


                         </asp:GridView>
        		           
			           </div>
</asp:Content>

