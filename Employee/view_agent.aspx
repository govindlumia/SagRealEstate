<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="view_agent.aspx.cs" Inherits="Agent_view_agent" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" /><script type="text/javascript" src="../Jscript/mtmv.js"></script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

  <div class="detailedViewHeader">
  <p class="lvtHeaderText">View Employee Details</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%;">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >
  <tr>
  <td valign="middle" class="dvtCellLabeltop">User Name : </td>
  <td valign="middle" class="cellInfo">
  <asp:DropDownList ID="Ddlbranchname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
  </asp:DropDownList>
   </td>
   <td valign="middle" class="dvtCellLabeltop">Employee Name :</td>
   <td valign="middle" class="cellInfo">
   <asp:DropDownList ID="ddlagent" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
  
   </asp:DropDownList>
   </td>
   </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:0px; padding-top:0px; padding-top:5px;  text-align:center; font-size:20px; color:#358ac2; background-color:#DDDCDD">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" onclick="submit_Click"  />&nbsp;&nbsp;
 
   </td>
   </tr>


   <tr>
   <td colspan="4" style="padding-top:10px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 
 <div class="mGrid1"  id="gridCustomers" style="border-collapse:collapse; padding-top:0px; text-align:center">
                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None" AllowPaging ="false" Width="100%" 

                                EmptyDataText ="No Data found for the criteria you selected." 
                            
                           
                             CssClass="mGrid1"
            PagerStyle-CssClass="pgr"
                           > 
                                
                         <Columns >
                        <%-- <asp:TemplateField  HeaderText ="Action">
                             
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>--%>
                          
                      
                           <asp:TemplateField HeaderText="agent_id" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblemp_id" runat="server" Text ='<%#Eval("agent_id") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                         
                        
           
                                 
                                
                                 <asp:BoundField DataField ="agent_name" HeaderText ="Employee Name"/>
                                  <asp:BoundField DataField ="branch_name" HeaderText ="Branch Name"/>
                                 <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile No"/>
                                
                                 <asp:BoundField DataField ="address" HeaderText ="address"/>
                                 <asp:BoundField DataField ="commision" HeaderText ="Commision"/>
                                  <asp:BoundField DataField ="doj" HeaderText ="DOJ"/>
                                  <asp:BoundField DataField ="created_on" HeaderText ="Created Date"/>
                                 <asp:BoundField DataField ="agent_status" HeaderText ="Agent Status"/>  
                                                       
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

