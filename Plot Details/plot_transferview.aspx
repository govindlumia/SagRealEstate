<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="plot_transferview.aspx.cs" Inherits="Plot_Details_plot_transferview"  Culture="en-GB" UICulture="en-GB"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
<script type="text/javascript" src="../Jscript/mtmv.js"></script>
<link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>
 --%>
 <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
     <link href="../css/drop.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/dropdon.js" type="text/javascript"></script>
   <link rel="../stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>



 <div class="detailedViewHeader">
  <p class="lvtHeaderText">Plots Transfer Details</p>
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
 <tr>
 <td valign="middle" class="dvtCellLabeltop">View All Plot Transfer  :</td>
 <td valign="middle" class="cellInfo" style="width:200px">
        <asp:DropDownList ID="DD_All" runat="server" AutoPostBack="True" 
            BorderColor="#dddddd" BorderStyle="Solid" BorderWidth="1px" CssClass="dropdown" 
            Width="220px">
            <asp:ListItem>--------Select -----------</asp:ListItem>
          <asp:ListItem>Select All</asp:ListItem>
        </asp:DropDownList>
 </td>
 </tr>
 <tr><td colspan="4" align="center" class="dvtCellLabel">
  <asp:Button ID="View" CssClass="submit_botton2" runat="server" 
                          Text="View" 
            onclick="View_Click" CausesValidation="False" />
 
 
 </td></tr>

 <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 
 <div class="mGrid1"    id="Div1" style="width:100%;border-collapse:collapse; padding-top:0px"">


                         <asp:GridView ID="GridView1" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="False" Width="100%"

                                EmptyDataText ="No lead found for the criteria you selected." 
                            
                           
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr" onrowcommand="GridView1_RowCommand" 
                           > 
                                
                         <Columns >
                     <%--   <asp:TemplateField  HeaderText ="Edit">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>--%>

                           <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("s_no") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>

                              <%--  s_no,customer_id,plot_cost,plot_size,rate_per_sq,sale_date,registrant_name,father_name,   
mobile_no,address,created_by, p_project, p_block, p_plot ,n_project,n_block, n_plot,created_on--%>



                                 <asp:BoundField DataField ="customer_id" HeaderText ="Customer ID"/>
                                 <asp:BoundField DataField ="registrant_name" HeaderText ="Customer Name"/>
                                   <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile No "/>
                                 <asp:BoundField DataField ="p_project" HeaderText ="Old Project"/>
                                <asp:BoundField DataField ="p_block" HeaderText ="Old Block"/>
                                 <asp:BoundField DataField ="p_plot" HeaderText ="Old Plot"/>

                                   <asp:BoundField DataField ="n_project" HeaderText ="New Project"/>
                           <asp:BoundField DataField ="n_block" HeaderText ="New  Block "/>
                                 <asp:BoundField DataField ="n_plot" HeaderText ="New Plot" />
                                      
                               <asp:BoundField DataField ="total_paid" HeaderText ="Transfer Amt"/>
                                 <asp:BoundField DataField ="created_on" HeaderText =" Transfer On"/>                     
                                
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

