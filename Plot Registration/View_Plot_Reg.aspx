<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="View_Plot_Reg.aspx.cs" Inherits="Plot_Registration_View_Plot_Reg" Culture="en-GB" UICulture="en-GB" %>
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
    <link rel="stylesheet" type="text/css"  href="../themes/softed/style.css">
  <%--  <link rel="stylesheet" href="../css/MenuMatic.css" type="text/css" media="screen" charset="utf-8" />--%>
 
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


<div class="detailedViewHeader" style="width:100%;margin-left:0%;">

  <p class="lvtHeaderText">View Registry Details</p>
  </div>



 <div class="dvtContentSpace" style="width:100%;margin-left:0%;">

<table  cellpadding="0" cellspacing="0" class="big" style="margin-left:0%;width:100%;margin-top:5px">
  <tr>
   <td valign="middle" class="dvtCellLabeltop" >FROM : </td>
   <td valign="middle" class="cellInfo" >
    <asp:TextBox ID="txtfromdate" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:Image runat="Server" ID="image3" align="absmiddle" ImageUrl="~/images/cal.gif" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SetFocusOnError="true"
                            ControlToValidate="txtfromdate" Display="Dynamic" ErrorMessage="Enter From Date"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtfromdate" Operator="DataTypeCheck"
                            Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <ajax:CalendarExtender ID="calendarextender1" runat="server" TargetControlID="txtfromdate"
                            Format="dd/MM/yyyy" PopupButtonID="image3" />

   </td>
   <td valign="middle" class="dvtCellLabeltop" style="width:5%">TO :</td>
   <td valign="middle" class="cellInfo"style="width:30%">
    <asp:TextBox ID="txttodate" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:Image runat="Server" ID="Image4" ImageUrl="~/images/cal.gif" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttodate"
                            Display="Dynamic" ErrorMessage="Enter To Date" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txttodate" Operator="DataTypeCheck"
                            Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <asp:CompareValidator ID="CompareValidator3" ControlToValidate="txttodate" ControlToCompare="txtfromdate"
                            Type="Date" Operator="GreaterThanEqual" Display="Dynamic" ErrorMessage="This Date cannot be less than from date"
                            runat="server" SetFocusOnError="true"></asp:CompareValidator>
                        <ajax:CalendarExtender ID="calendarextender4" runat="server" TargetControlID="txttodate"
                            Format="dd/MM/yyyy" PopupButtonID="Image4" />

  </td>
 </tr>
 <tr>
 <td valign="middle" class="dvtCellLabeltop">View All Plot Registry  :</td>
 <td valign="middle" class="cellInfo" style="width:200px">
        <asp:DropDownList ID="DD_All" runat="server" AutoPostBack="True" 
            BorderColor="#dddddd" BorderStyle="Solid" BorderWidth="1px" CssClass="dropdown" 
            Width="220px">
            <asp:ListItem>--------Select -----------</asp:ListItem>
          <asp:ListItem>Select All</asp:ListItem>
        </asp:DropDownList>
 </td>
 </tr>
 <tr><td colspan="4" align="center" class="dvtCellLabel" style="width:5%">
  <asp:Button ID="Button1" CssClass="submit_botton2" runat="server"
                            Text="View" 
             onclick="View_Click" CausesValidation="False" />
 
 
 </td></tr>
 
 </table>
 </div>
   <center>
 
  <div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99%">
<table width="90%" cellpadding="0" cellspacing="0" class="big">
  
 <tr>
   <td colspan="" style="padding-top:0px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 
 <div class="mGrid1"    id="Div2" style="width:90%;border-collapse:collapse; padding-top:0px"">


                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="True" Width="100%"  onrowcommand="grdLead_RowCommand1"
                          EmptyDataText ="No lead found for the criteria you selected." 
                            
                           
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr"
                           >  
                         <Columns >
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


                                <asp:BoundField DataField ="project_name" HeaderText ="Project"/>
                                 <asp:BoundField DataField ="block" HeaderText ="Block"/>
                                 <asp:BoundField DataField ="plot_no" HeaderText ="Plot No"/>
                                   <asp:BoundField DataField ="CustomerId" HeaderText ="CustomerID"/>
                                    <asp:BoundField DataField ="registrant_name" HeaderText ="Registrant Name"/>
                                    <asp:BoundField DataField ="documentno" HeaderText ="Document NO."/>
                                 <asp:BoundField DataField ="registration_date" HeaderText ="Regd.Date"/>
                                 <asp:BoundField DataField ="registration_fee" HeaderText ="Regd.Fee"/>
                                  <asp:BoundField DataField ="plot_cost" HeaderText ="Plot Cost "/>
<%--                                  <asp:BoundField DataField ="collected_booking_amt" HeaderText ="Booking Amt (Paid in Sale)"/>
--%>                                 <asp:BoundField DataField ="rest_amount" HeaderText ="Total Amt (Paid)"/>
                                   
            <asp:BoundField DataField ="registration_date" HeaderText ="Registration Date"/>
                                  <asp:BoundField DataField ="created_on" HeaderText ="Created Date"/> 
                                                     
                                
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

