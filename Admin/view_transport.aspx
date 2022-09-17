<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="view_transport.aspx.cs" Inherits="Admin_view_transport" Culture="en-GB" UICulture="en-GB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

  <div class="detailedViewHeader" style="width:100%">
  <p class="lvtHeaderText">View Transport Details</p>
  </div>
    
<center>
<div  class="dvtContentSpace" style="padding:10px 10px 10px 10px; width:98%">

<table width="100%" cellpadding="0" cellspacing="0" class="big">
   <tr>
   <td valign="middle" class="dvtCellLabeltop">FROM : </td>
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
   <td valign="middle" class="dvtCellLabeltop" style="width:150px; padding-left:10px">TO :</td>
   <td valign="middle" class="cellInfo">
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

  <%-- <asp:TextBox ID="txtdate" runat="server" 
  style="width:242px; border-width:1px; height:21px; padding: 2px 2px 2px 5px; color:black; 
  font-size:12px; border-radius:5px; background-color:#f5f5f5; border:1px solid #e0e0e0"></asp:TextBox>
   <asp:Image ID="Image1" runat="Server" ImageUrl="~/images/cal.gif" align="absmiddle" />                             
   <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="txtdate" />   --%>                              
 </td>
 </tr>
 <tr><td colspan="4" align="center" class="dvtCellLabel">
  <asp:Button ID="View" runat="server" Font-Bold="true" Height="28px"
                           ForeColor="Black" Font-Size="10pt" Text="View" 
             Width="125px" onclick="View_Click" />
 
 
 </td></tr>

 <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 
 <div class="mGrid1"    id="Div1" style="width:100%;border-collapse:collapse; padding-top:0px"">


                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="False" Width="100%"

                                EmptyDataText ="No lead found for the criteria you selected." 
                            
                           
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr"  onrowcommand="grdLead_RowCommand"
                           > 
                                
                         <Columns >
                      
                      <asp:TemplateField  HeaderText ="Action">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>
                          
                      
                           <asp:TemplateField HeaderText="s_no" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lbls_no" runat="server" Text ='<%#Eval("s_no") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>


                                 <asp:BoundField DataField ="s_no" HeaderText ="Serial No"/>
                                 <asp:BoundField DataField ="two_wheelers" HeaderText ="Two Wheelers"/>
                                 <asp:BoundField DataField ="two_vehicle_name" HeaderText ="Vehicle Name"/>
                                 <asp:BoundField DataField ="two_vehicle_reg_no" HeaderText ="Two Wheelers Reg. No"/>
                                 <asp:BoundField DataField ="four_no_of_wheelers" HeaderText ="Four Wheelers"/>
                                  <asp:BoundField DataField ="four_vehicle_name" HeaderText ="Four Wheelers Vehicle Name"/>
                                 
                                 <asp:BoundField DataField ="four_vehicle_reg_no" HeaderText ="Four Wheelers Reg. No "/>
                                 <asp:BoundField DataField ="created_on" HeaderText ="Created On"/>
                                  
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

