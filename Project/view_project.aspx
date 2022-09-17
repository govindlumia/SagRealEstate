<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="view_project.aspx.cs" Inherits="view_project" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" /><script type="text/javascript" src="../Jscript/mtmv.js"></script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
<script type="text/javascript" src="../Jscript/mtmv.js"></script>


<div class="detailedViewHeader">
  <p class="lvtHeaderText">View Project Details</p>
  </div>

 
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">
<table width="100%" cellpadding="0" cellspacing="0" class="big">

 <tr>
   <td valign="middle" class="dvtCellLabeltop">Project Name :</td>
    <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="ddlproject" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
   
    </asp:DropDownList>
   </td>
   <td valign="middle" class="dvtCellLabeltop"><asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click" />&nbsp;&nbsp; </td>
   <td valign="middle"  class="cellInfo">
    
   </td>
   </tr>


   <tr>
   <td colspan="4" style="padding-top:10px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 
 <div class="mGrid1"  Width="100%" id="Div1" style="width:100%;border-collapse:collapse; padding-top:0px; text-align:left">
                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="false" Width="100%" 

                                EmptyDataText ="No Project found for the criteria you selected." 
                            
                           
                             CssClass="mGrid1"
            PagerStyle-CssClass="pgr" PageSize="30"> 
                                
                         <Columns >
                        <%-- <asp:TemplateField  HeaderText ="Action">
                             
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>--%>
                          
                      
                          <%-- <asp:TemplateField HeaderText="emp_id" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblemp_id" runat="server" Text ='<%#Eval("emp_id") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                         --%>
                        
           
                              <asp:BoundField DataField ="project_name" HeaderText ="Project Name"/>
                              <asp:BoundField DataField ="project_location" HeaderText ="Project Location"/>
                              <asp:BoundField DataField ="block" HeaderText ="No of Block"/>
                                <asp:BoundField DataField ="no_of_plot" HeaderText ="No of Plot"/>
                                 <asp:BoundField DataField ="Company" HeaderText ="Billing Company"/>
                                  <asp:BoundField DataField ="project_status" HeaderText ="Project Status"/>
                                
                           <asp:BoundField DataField ="created_on" HeaderText ="Created Date" />
                                                       
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
