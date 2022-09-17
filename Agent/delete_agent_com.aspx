<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="delete_agent_com.aspx.cs" Inherits="Agent_delete_agent_com" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Deactivate Agent</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%;">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
 <tr>
  <td valign="middle" class="dvtCellLabeltop">User Name : </td>
  <td valign="middle" class="cellInfo" style="width:350px">
  <asp:DropDownList ID="Ddlbranchname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
  </asp:DropDownList> 

  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SetFocusOnError="true" InitialValue="0"
           ControlToValidate="Ddlbranchname" Display="Dynamic" ErrorMessage="Enter Branch Name"></asp:RequiredFieldValidator>
   </td>
   <td valign="middle" class="dvtCellLabeltop">Agent Name : </td>
   <td valign="middle" class="cellInfo">
   <asp:DropDownList ID="ddlagentname" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
   
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true" InitialValue="0"
                            ControlToValidate="ddlagentname" Display="Dynamic" ErrorMessage="Enter Agent Name"></asp:RequiredFieldValidator>
    
    
    </td>
  
   
   </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; font-size:20px; color:#358ac2; background-color:#DDDCDD">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" onclick="submit_Click" 
            />&nbsp;&nbsp;

<asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click" />
     
   </td>
   </tr>

   <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <%--<tr>
 <td valign="middle" class="dvtCellLabeltop">
 <div class="mGrid1" id="Div1" style="width:100%;border-collapse:collapse; padding-top:0px; text-align:center">
                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="False" Width="100%" EmptyDataText ="No lead found for the criteria you selected." CssClass="mGrid"> 
                                
                         <Columns >
                         <asp:TemplateField  HeaderText ="Action">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="Delete" ToolTip ="Click to Delete" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>
                          
                      
                           <asp:TemplateField HeaderText="agent_id" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblagent_id" runat="server" Text ='<%#Eval("agent_id") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:BoundField DataField ="branch_name" HeaderText ="Branch Name"/>
                                 <asp:BoundField DataField ="agent_name" HeaderText ="Agent Name"/>
                                 <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile No"/>
                                 <asp:BoundField DataField ="address" HeaderText ="Address"/>
                                 <asp:BoundField DataField ="commision" HeaderText ="Commision"/>
                                 <asp:BoundField DataField ="doj" HeaderText ="DOJ"/>
                                 <asp:BoundField DataField ="created_on" HeaderText ="Created Date"/>
                                 <asp:BoundField DataField ="agent_status" HeaderText ="Agent Status"/>                      
                                                       
                         </Columns>
                            


                         </asp:GridView>
        		           
			           </div>
 </td>
  
   </tr>--%>

    

</table>
   </td>
   </tr>

   </table>
</div>
   
   
</center>
</asp:Content>

