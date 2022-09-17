<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="show_project_details.aspx.cs" Inherits="show_project_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
     function camelcase(input, ctrl) {
         var s = input;

         var result = s.replace(/(?:^|\s)\w/g, function (match) {
             return match.toUpperCase();
         });

         document.getElementById(ctrl).value = result;

     }
</script>
 
 
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" /><script type="text/javascript" src="../Jscript/mtmv.js"></script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

<div class="detailedViewHeader">
  <p class="lvtHeaderText">View Plot Details</p>
  </div>

    <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Plot Details 
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabeltop" style="padding-top:15px; padding-bottom:15px">Project Name : </td>
   <td valign="middle" class="cellInfo" style="width:350px;padding-top:15px; padding-bottom:15px"">
   <asp:DropDownList ID="ddlproject" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd"  CssClass="dropdown">
   
    </asp:DropDownList>
   </td>
   <td valign="middle" class="dvtCellLabeltop"style="padding-top:15px; padding-bottom:15px"> 
      Block :</td>
   <td valign="middle" class="cellInfo" style="width:350px; padding-top:15px; padding-bottom:15px"">
       <asp:TextBox ID="txtblock" runat="server" CssClass="textbox" onBlur="camelcase(this.value, this.id)"></asp:TextBox></td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Plot No. :</td>
   <td valign="middle" class="cellInfo1" style="width:350px">
   
          
   
   <asp:TextBox ID="Txtplotno" runat="server" CssClass="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabeltop"style="padding-top:15px; padding-bottom:15px"> <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click"/>&nbsp;&nbsp;</td>
   
   <td>
    </td>
  
   </tr>
 <tr>
   <td colspan="4"  style="padding-top:0px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
   <div class="mGrid1"  Width="100%" id="gridCustomers" style="width:100%;border-collapse:collapse; padding-top:0px; text-align:center">
                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="true" Width="100%" 

                                EmptyDataText ="No Data found for the criteria you selected." 
                            
                           
                             CssClass="mGrid1"
            PagerStyle-CssClass="pgr" onpageindexchanging="grdLead_PageIndexChanging1" PageSize="30"
                           > 
                                
                         <Columns >
                        <%-- <asp:TemplateField  HeaderText ="Action">
                             
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>--%>
                          
                      
                           <%--<asp:TemplateField HeaderText="emp_id" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblemp_id" runat="server" Text ='<%#Eval("emp_id") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                         --%>
                        
                             <asp:BoundField DataField ="project_name" HeaderText ="Project"/>
                              <asp:BoundField DataField ="block" HeaderText ="Block"/>
                             <asp:BoundField DataField ="plot_no" HeaderText ="Plot No"/>
                             <asp:BoundField DataField ="Total_plot_area" HeaderText ="Plot Area"/>
                             <asp:BoundField DataField ="plc" HeaderText ="PLC / Sq. Yrds"/>
                             <asp:BoundField DataField ="rate_per_sqr" HeaderText ="Rate / Sq. Yard "/>
                             <asp:BoundField DataField ="specification" HeaderText ="Specification"/>
                             <asp:BoundField DataField ="plot_cost" HeaderText ="Plot Cost"/>
                               <asp:BoundField DataField ="plottype" HeaderText ="Plot Type"/>
                              <asp:BoundField DataField ="plotlocation" HeaderText ="Location"/>
                            <asp:BoundField DataField ="status" HeaderText ="Status"/>
                             <asp:BoundField DataField ="created_on" HeaderText ="Date" />
                                                       
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

