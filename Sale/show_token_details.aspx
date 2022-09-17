<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="show_token_details.aspx.cs" Inherits="Sale_show_token_details" Culture="en-GB" UICulture="en-GB" %>
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
  <p class="lvtHeaderText">Booking Details</p>
  </div>

 <center>
 <div  class="dvtContentSpace" style="padding:10px 10px 10px 10px; width:98%">

<table width="100%" cellpadding="0" cellspacing="0" class="big">
   
 <tr>
   <td valign="middle" class="dvtCellLabeltop" colspan="2" align="center">Search(Customer Name/Mobile No) 
   
   <asp:TextBox runat="server" ID="txtsearch" CssClass="textbox"></asp:TextBox>
   </td>
   
 </tr>
 <tr><td colspan="4" align="center" class="dvtCellLabel">
  <asp:Button ID="View" CssClass="submit_botton4" runat="server" Text="View" onclick="View_Click" CausesValidation="False" />
 
 
 </td></tr>

 <tr>
   <td colspan="4" style="padding-top:0px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 
 <div class="mGrid1"    id="Div1" style="width:100%;border-collapse:collapse; padding-top:0px"">


                         <asp:GridView ID="GridView1" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="False" Width="100%"

                                EmptyDataText ="No lead found for the criteria you selected." 
                            
                           style="white-space: nowrap;overflow: hidden;" 
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr" onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
                           > 
                                
                         <Columns >

                       <asp:TemplateField  HeaderText ="Print" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="print"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>




                                                 <asp:TemplateField  HeaderText ="Edit" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice1" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>
                        
  <asp:TemplateField HeaderText="s_no" Visible= "false" >
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("s_no") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:BoundField DataField ="project_name" HeaderText ="Project"/>
                                 <asp:BoundField DataField ="block" HeaderText ="Block"/>
                                  <asp:BoundField DataField ="agent_name" HeaderText ="Agent"/>
                                   <asp:BoundField DataField ="employee" HeaderText ="Employee"/>
                               <%-- <asp:BoundField DataField ="no_of_plots" HeaderText ="NoOfPlot"/>--%>
                                <asp:BoundField DataField ="plot_no" HeaderText ="Plot No"/>
                                <asp:BoundField DataField ="plot_size" HeaderText ="Plot Size"/>
                                <asp:BoundField DataField ="registrant_name" HeaderText ="Registrant"/>
                                <asp:BoundField DataField ="father_name" HeaderText ="Name"/>
                                <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile"/>
                                <asp:BoundField DataField ="address" HeaderText ="Address " />
                             
                                <asp:BoundField DataField ="amount" HeaderText ="Amt "/>
                              <asp:BoundField DataField ="agr_date" HeaderText ="AG. Date"/>
                     
                                    <asp:BoundField DataField ="rate_per_sq" HeaderText ="Rate/Sq"/>
                                 <asp:BoundField DataField ="count_days" HeaderText ="Count Days"/>
                                  <asp:BoundField DataField ="status" HeaderText ="Status"/>
                                   <asp:BoundField DataField ="created_on" HeaderText ="Date"/> 

                                  <%--<asp:TemplateField  HeaderText ="Change Status" >
                                                <ItemTemplate>
                           <asp:ImageButton ID="imgInvoice3" ImageUrl ="../images/deletedata.png" runat="server" CommandName ="Delete" ToolTip ="Click to Delete" CausesValidation ="false"   /> 
                                                                   
                                                </ItemTemplate>
                                                  </asp:TemplateField>      --%>
   
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


