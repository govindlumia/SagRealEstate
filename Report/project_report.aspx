<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="project_report.aspx.cs" Inherits="report_project_wise" Culture="en-GB" UICulture="en-GB" %>
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
  <p class="lvtHeaderText">Project Report</p>
  </div>

 <center>
 
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7% ">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >


 <tr>
 <td valign="middle" class="dvtCellLabel">PROJECT NAME : </td>
   <td valign="middle" class="cellInfo1" style="width:350px">
   <asp:DropDownList ID="ddlselectproject" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
   
   </asp:DropDownList>
   </td>
   <td valign="middle" class="dvtCellLabel"> </td>
   <td valign="middle" class="cellInfo1" style="width:350px;">
   <%--<asp:DropDownList ID="Ddlbranchname" runat="server" Width="250px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" style=" border-width:1px;height:26px;padding: 2px 2px 2px 5px; color:black; font-size:12px; border-radius:5px">
    
    </asp:DropDownList>--%> </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel" colspan="4" style="padding-bottom:0px; text-align:center;  padding-bottom:7px">
       <asp:Button ID="ImageButton1" CssClass="submit_botton2"  runat="server" Text="Submit" onclick="submit_Click" />
 <%--  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/submitButton.png" onclick="submit_Click"/>&nbsp;&nbsp;--%>
  <%-- <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click"/><br /><br />--%>
   </td>

   <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 <div class="mGrid1"  id="gridCustomers" style="width:100%;border-collapse:collapse; padding-top:0px; text-align:left">
     <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None" AllowPaging ="False" Width="100%"

                                EmptyDataText ="No Data found for the criteria you selected." 
                            
                           
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr"
                           > 
                                
                         <Columns >
                 <%--    project_id,project_name,project_location,block,        
no_of_plot,Company,created_on,created_by,isnull(project_status,'not Available') as project_status ,created_on--%>

                           <asp:BoundField DataField ="project_name" HeaderText ="Project Name"/>
                           <asp:BoundField DataField ="project_location" HeaderText ="Project Location"/>
                                 
                          
                           <asp:BoundField DataField ="block" HeaderText ="Block"/>     
                          <asp:BoundField DataField ="no_of_plot" HeaderText =" Total No Of Plot"/>
                          <asp:BoundField DataField ="Company" HeaderText ="Company"/>
                             <asp:BoundField DataField ="project_status" HeaderText ="Project Status"/>
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

