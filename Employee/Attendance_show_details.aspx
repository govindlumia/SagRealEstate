<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="Attendance_show_details.aspx.cs" Inherits="Agent_Attendance_show_details" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

<div>

<table style="width:100%;">
   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; font-size:20px; color:#224980;width:100%;" >
   <p style="text-shadow:2px 2px 2px #B7B7B7; margin-top:-10px;width:100%;" class="detailedViewHeader">EMPLOYEE ATTENDANCE DETAILS</p>
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabeltop" style="width:150px; padding-left:10px">FROM : </td>
   <td valign="middle" class="cellInfo"  style="width:350px">
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
   <td valign="middle" class="dvtCellLabeltop" style="width:150px; padding-left:10px">TO :</td>
   <td valign="middle" class="cellInfo"  style=" border-width:1px; height:21px; padding: 2px 2px 2px 0px; color:black; font-size:12px; border-radius:5px">
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
 <tr class="detailedViewHeader"><td colspan="4" align="center">
  <asp:Button ID="View" runat="server" Font-Bold="true" Height="25px"
                           ForeColor="Black" Font-Size="10pt" Text="View" 
             Width="104px" onclick="View_Click"     />
 
 
 </td></tr>

</table>
</div>


   <div class="mGrid1"     id="Div1" style="width:100%;border-collapse:collapse; padding-top:0px;text-align:center">


                         <asp:GridView ID="GridView1" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="True" Width="100%"

                                EmptyDataText ="No DATA found for the criteria you selected." 
                            
                           
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr" onrowcommand="GridView1_RowCommand"
                           > 
                                
                         <Columns >
                         <asp:TemplateField  HeaderText ="Action">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>
                          
                      
                           <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("sno") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                         
                      
           
                                 <asp:BoundField DataField ="Branch_Name" HeaderText ="Branch Name"/>
                                 <asp:BoundField DataField ="agent_name" HeaderText ="Agent Name"/>
                               <asp:BoundField DataField ="T_Working_Day" HeaderText ="Total Working Day"/>
                                 <asp:BoundField DataField ="Leave" HeaderText ="Leave"/>
                                 <asp:BoundField DataField ="L_Without_Pay" HeaderText ="Leave Without Pay"/>
                                 <asp:BoundField DataField ="Absent" HeaderText ="Absent"/>
                                 <asp:BoundField DataField ="created_on" HeaderText ="Created Date"/>
                                 
                         </Columns>
                            


                         </asp:GridView>
        		           
			           </div>

</asp:Content>

