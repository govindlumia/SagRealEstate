<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="Attendance" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

<div class="detailedViewHeader">
  <p class="lvtHeaderText">Employee Attendance</p>
  </div>
<center>
<asp:Panel ID="PanelHEAD" runat="server" Visible="true" >
<div class="" style="padding:10px 10px 10px 0px;width:100%">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >
  
   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Enter Details
   </td>
   </tr>
   
    <tr>
    <td valign="middle" class="dvtCellLabeltop">Date </td>
    <td valign="middle" class="cellInfo">
       <asp:TextBox ID="txtfromdate" runat="server" Width="160px"></asp:TextBox>
  <asp:Image runat="Server" ID="Image1" ImageUrl="~/images/cal.gif"  />
   <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" ErrorMessage="Enter a valid Date" SetFocusOnError="true"  ControlToValidate="txtfromdate" Display="Dynamic"></asp:RequiredFieldValidator>
     <ajax:CalendarExtender ID="calendarextender1" runat="server" TargetControlID="txtfromdate" Format="dd/MM/yyyy" PopupButtonID="image1" />
  
  
   <asp:TextBox ID="txttodate" runat="server" Visible="False"></asp:TextBox>&nbsp;
    <asp:CompareValidator ID="cmv_date" ControlToValidate="txttodate" ControlToCompare="txtfromdate"
     Type="Date" Operator="GreaterThanEqual" Display="Dynamic" ErrorMessage="from date"
      runat="server" SetFocusOnError="true"></asp:CompareValidator>
       
        </td>
   <td valign="middle" class="dvtCellLabeltop">Select Branch</td>
   <td valign="middle" class="cellInfo"><asp:DropDownList ID="Ddlbranchname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    
    </asp:DropDownList></td>
   </tr>

  <tr>
   <td valign="middle" colspan="4" style="padding-bottom:0px; padding-top:10px; text-align:center; font-size:20px; color:#358ac2; background-color:#DDDCDD">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" onclick="submit_Click" 
           />&nbsp;&nbsp;

   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click" CausesValidation="False"/>  <asp:Label ID="lblMSg"  ForeColor="Red" runat="server" Text=""></asp:Label>
 </td>
</tr>
</table>
</div>
</asp:Panel>
</center>
<div>
<asp:UpdatePanel ID="UP1" runat="server" UpdateMode="Conditional">

<ContentTemplate>
  <div class="mGrid" cellspacing="0" rules="cols" border="1" id="gridCustomers" style="width:100%;border-collapse:collapse;">
                         <asp:GridView ID="grdAttendance" runat="server" AutoGenerateColumns="False" 
                             onrowdatabound="grdAttendance_RowDataBound" 
                             GridLines =None Width =100% 
                             EmptyDataText ="No request found for the criteria you selected." 
                             ShowFooter="True" onrowediting="grdAttendance_RowEditing" onselectedindexchanged="grdAttendance_SelectedIndexChanged" 
                             >          
<Columns> 
 <asp:TemplateField HeaderText="Sno.">
 <ItemTemplate>
 <%#Container.DataItemIndex+1 %>
 </ItemTemplate>
 </asp:TemplateField>   
 <asp:BoundField DataField="Branch_Name" HeaderText="Branch Name" />

 
    <asp:TemplateField HeaderText="Branch_Name" Visible="false">
                            <ItemTemplate>
                                   <asp:Label ID="lblBranch_Name" runat="server" Text='<%# Eval("Branch_Name") %>' />
                            </ItemTemplate>
                           </asp:TemplateField>
    <asp:BoundField DataField="agent_name" HeaderText="Employee Name" />
     <asp:TemplateField HeaderText="agent_name" Visible="false">
                            <ItemTemplate>
                                   <asp:Label ID="lblagent_name" runat="server" Text='<%# Eval("agent_name") %>' />
                            </ItemTemplate>
                           </asp:TemplateField>
     <asp:TemplateField HeaderText="Serial_no" Visible="false">
                            <ItemTemplate>
                                   <asp:Label ID="lblSerial_no" runat="server" Text='<%# Eval("Serial_no") %>' />
                            </ItemTemplate>
                           </asp:TemplateField>

 
                        
    <asp:TemplateField HeaderText="Attendance Status" Visible="false">
          <ItemTemplate>
          <asp:Label ID="attendance" runat="server" Text='<%# Eval("attendence_status") %>' />
          </ItemTemplate>
          </asp:TemplateField>

      <asp:TemplateField HeaderText="Attendance Status">       
        <ItemTemplate>                  
            <asp:DropDownList ID="ddlAttendanceStatus" runat="server" 
            EnableViewState="true"  Height="25px" Width="128px" AutoPostBack="True" 
                onselectedindexchanged="ddlAttendanceStatus_SelectedIndexChanged1"/>
<asp:RequiredFieldValidator ID="rfvAttendance" runat="server" ControlToValidate="ddlAttendanceStatus"
                            ErrorMessage="select Attendance" InitialValue="0" ></asp:RequiredFieldValidator> 
       </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Reason" Visible="false">
          <ItemTemplate>
          <asp:Label ID="reason" runat="server" Text='<%# Eval("reason") %>' />
          </ItemTemplate>
          </asp:TemplateField>
      <asp:TemplateField HeaderText="Leave Reason">       
        <ItemTemplate>                  
            <asp:DropDownList ID="ddlReason" AutoPostBack="false"  runat="server"
                Height="25px" Width="125px" />
       </ItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Remarks" Visible="false">
          <ItemTemplate>
          <asp:Label ID="remarks" runat="server" Text='<%# Eval("Remarks") %>' />
          </ItemTemplate>
          </asp:TemplateField>
    <asp:TemplateField HeaderText="Remarks">       
        <ItemTemplate>                  
            <asp:TextBox ID="txtRemarks" 
            runat="server"/>
       </ItemTemplate> 
    </asp:TemplateField>

    
     <asp:TemplateField HeaderText="InTime" Visible="false">
          <ItemTemplate>
          <asp:Label ID="lblIntime" runat="server" Text='<%# Eval("intime") %>' />
          </ItemTemplate>
          </asp:TemplateField>
    <asp:TemplateField HeaderText="Intime">       
        <ItemTemplate>                  
            <asp:TextBox ID="txtIntime" 
            runat="server"/>
       </ItemTemplate> 
    </asp:TemplateField>
 
   <asp:TemplateField HeaderText="OutTime" Visible="false">
          <ItemTemplate>
          <asp:Label ID="lblOutTime" runat="server" Text='<%# Eval("outtime") %>' />
          </ItemTemplate>
          </asp:TemplateField>
    <asp:TemplateField HeaderText="OutTime">       
        <ItemTemplate>                  
            <asp:TextBox ID="txtOutTime" 
            runat="server"/>
       </ItemTemplate> 
    </asp:TemplateField>
</Columns>
</asp:GridView>   
</div>
<asp:Panel ID="savebtn" runat="server" Visible="false" >
<div class="gridHeader">
<table align="center" style="height:30px; text-align:center" width="70%">
 <tr>
 <td colspan=2 align="center" style=" padding-top:20px; padding-bottom:20px">
 <asp:Button ID="Save" runat="server" Text="Save" Font-Bold="True"  
         Width="100px" onclick="Save_Click"  />
        <asp:Button ID="btncalcel" runat="server" Font-Bold="True" Text="Cancel"  
        Width="100px" CausesValidation="False" onclick="btncalcel_Click"/>
        
 </td>
  
 </tr>
 </table></div>
 </asp:Panel>
</ContentTemplate>

</asp:UpdatePanel>
</div>
</asp:Content>

