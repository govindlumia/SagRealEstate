<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="view_daily_attendance.aspx.cs" Inherits="view_daily_attendance" Culture="en-GB" UICulture="en-GB"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div class ="gridSearch" style="height:100px">

 <table style="width:100%">
 <tr>

<td  style="width:100%; padding-bottom:10px; padding-left:0px; padding-top:0px">
<label style=" font-family:Arial; font-style:normal; font-weight:bold; color:Black ; font-size:18px;padding-left:0px">
 Daily Attendance Sheet </label>
  
</td>
</tr>
 <tr>
 <td  style="padding-top:20px; width:100%; color:Black; text-align:center"><b>Select Date&nbsp; </b>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                     
                        <asp:TextBox ID="txtfromdate" runat="server" 
                           ></asp:TextBox>
                        <asp:Image runat="Server" ID="Image1" ImageUrl="~/images/cal.gif" />

     <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" ErrorMessage="Please Enter a valid Date" SetFocusOnError="true"  ControlToValidate="txtfromdate" Display="Dynamic"></asp:RequiredFieldValidator>

   
                        <ajax:CalendarExtender ID="calendarextender1" runat="server" TargetControlID="txtfromdate"
                            Format="dd/MM/yyyy" PopupButtonID="image1" />

                           <label style="padding-left:20px">
     <asp:Button ID="View_show" runat="server" Text="View" 
          Width="111px" onclick="View_show_Click" /></label>  
                       </td>

 <td style=" font-family:Times New Roman; font-size:medium; color:Maroon">
   <%-- <asp:Label ID="lblerror" runat="server" Text="Please Enter the Correct Date"></asp:Label>--%>
</td>
 </tr>
 <tr>
 <td colspan="2" align="center"> 
 
 <asp:Label runat="server" ID="lblmsg"  Visible="false" style="color:Maroon; font-family:@Meiryo UI"> </asp:Label>
 </td></tr>
 </table>
 </div>

<div>
<asp:Panel ID="Pnlassign" runat="server">

<div class="mGrid1" cellspacing="0" rules="cols"   border="1" id="Div3" style="width:100%;border-collapse:collapse; padding-left:0px; padding-top:0px; text-align:center">
                         <asp:GridView ID="grdvassigntech" runat ="server" 
                             AutoGenerateColumns ="False"   GridLines ="None"  
                             Width ="100%"

                             EmptyDataText ="No Data found for the criteria you selected." 
                             BorderColor="#CCCCCC" BorderStyle="None"> 
                                
                         <Columns > 
 
                           <asp:BoundField DataField ="Branch_Name" HeaderText ="Branch Name"/>
                           <asp:BoundField DataField ="agent_name" HeaderText ="Employee Name"/>
                           
                           <asp:BoundField DataField ="attendence_status" HeaderText ="Attendance Status"/>
                           <asp:BoundField DataField ="reason" HeaderText ="Leave Reason"/>
                           <asp:BoundField DataField ="Remarks" HeaderText ="Remarks"/>
                           <asp:BoundField DataField ="intime" HeaderText ="InTime"/>
                           <asp:BoundField DataField ="outtime" HeaderText ="OutTime"/>
                           <asp:BoundField DataField ="date" HeaderText ="Attendance Date"/>
                         

                         </Columns>
                         </asp:GridView>
        		           
			           
 </div>
  </asp:Panel>

     </div>

</asp:Content>

