<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="view_expense.aspx.cs" Inherits="Expance_view_expense" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
<script type="text/javascript" src="../Jscript/mtmv.js"></script>
<link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

  <div class="detailedViewHeader">
  <p class="lvtHeaderText">View Expense Entry</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Expence Details 
   </td>
   </tr>

   <tr>
    <td valign="middle" class="dvtCellLabeltop">User Name : </td>
    <td valign="middle" class="cellInfo" style="width:350px">
    <asp:DropDownList ID="Ddlbranchname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    
    </asp:DropDownList>
   </td>
     <td valign="middle" class="dvtCellLabeltop"></td>
   <td valign="middle"  class="cellInfo">
                                   
 </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">FROM : </td>
   <td valign="middle" class="cellInfo1">
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
   <td valign="middle" class="dvtCellLabel">TO :</td>
   <td valign="middle" class="cellInfo1">
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
 <tr>
 <td colspan="4" align="center" class="dvtCellLabel">
 <asp:Button ID="View" runat="server" Font-Bold="true" Height="28px" 
         ForeColor="Black" Font-Size="10pt" Text="View" Width="125px" 
         onclick="View_Click"    />
  </td>
  </tr>

<tr>
   <td colspan="4" style="padding-top:0px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 
 <div class="mGrid1" id="Div1" style="width:100%;border-collapse:collapse; padding-top:0px; text-align:CENTER">
   <asp:GridView ID="GridView1" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  AllowPaging ="True" Width="100%"
    CssClass="mGrid" > 
                                
                         <Columns >
                                           
                           <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("sno") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                         
                         
                                <asp:BoundField DataField ="Branch_Name" HeaderText ="User Name"/>
                                 <asp:BoundField DataField ="Product_Cost" HeaderText ="Amount"/>
                                 <asp:BoundField DataField ="Product_Name" HeaderText ="Purpose"/>
                                 <asp:BoundField DataField ="mode_of_payment" HeaderText ="Payment Mode"/>
                                  <asp:BoundField DataField ="cheque_no" HeaderText ="Cheque No."/>
                                   <asp:BoundField DataField ="bank_and_branch" HeaderText ="Bank and Branch"/>
                                 
                                 <asp:BoundField DataField ="through" HeaderText ="Name"/>
                                 <asp:BoundField DataField ="Remarks" HeaderText ="Remarks"/>
                                  <asp:BoundField DataField ="created_on" HeaderText =" Date"/>                   
                                
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

