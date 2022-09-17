<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="show_agent.aspx.cs" Inherits="show_agent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



   <div class ="gridSearch" >
   <table style="height:0px; padding-left:30px"> 
   <tr>
     <td >
      <h2 >Agent Details </h2>
     </td> 
     <td></td>
      <td align="left" style="padding-top:5px; padding-bottom:5px; padding-left:850px" > 
          </td> 
      </tr>
    </table>

  <div>

   <table cellpadding="0" cellspacing="0" width="100%" style ="color:Black; padding-left:0px; padding-bottom:0px ">
     
		        <tr>
			        <td style="width:30%;" align="right" >
                        &nbsp;&nbsp; </td>

      <td style="width:50%" align="center" >&nbsp;Select Branch Name &nbsp;:&nbsp; 
          <asp:DropDownList ID="ddlbranch" runat="server" Width="150px" Height="22px">
            
             <asp:ListItem>Select Branch</asp:ListItem>
             <asp:ListItem>Delhi</asp:ListItem>
             <asp:ListItem>Faridabad</asp:ListItem>
             <asp:ListItem>Noida</asp:ListItem>
             <asp:ListItem>gurgaon</asp:ListItem>
                 
          </asp:DropDownList> &nbsp;</td>
                   
                   <td align="left" style="padding-top:10px; padding-bottom:10px" > 
                   <asp:Button ID="View" runat="server" Font-Bold="true" Height="28px"
                           ForeColor="Black" Font-Size="10pt" Text="View" 
             Width="185px" onclick="View_Click"     />
                       &nbsp;</td> 
    
                           
  </tr> 

	        </table>
	     </div>   

   </div>  
   <div class="mGrid1"    id="Div1" style="width:100%;border-collapse:collapse; padding-top:0px"">
                         <asp:GridView ID="GridView1" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="True" Width="100%"

                                EmptyDataText ="No lead found for the criteria you selected." 
                            
                           
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr"
                           > 
                                
                         <Columns >
                         <asp:TemplateField  HeaderText ="Action">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>
                          
                      
                           <%--<asp:TemplateField HeaderText="serialno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("serialNo") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                         
                        
           
                                 <asp:BoundField DataField ="branch_name" HeaderText ="Branch Name"/>
                                 <asp:BoundField DataField ="agent_name" HeaderText ="Agent Name"/>
                                 <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile No"/>
                                 <asp:BoundField DataField ="doj" HeaderText ="DOJ"/>
                                 <asp:BoundField DataField ="address" HeaderText ="address"/>
                                 <asp:BoundField DataField ="created_by" HeaderText ="created_by "/>
                                 <asp:BoundField DataField ="created_on" HeaderText ="created_on"/>
                                 <asp:BoundField DataField ="commision" HeaderText ="Commision"/>
                                 <asp:BoundField DataField ="agent_status" HeaderText ="Agent Status"/>                     
                                                       
                         </Columns>
                            


                         </asp:GridView>
        		           
			           </div>

<div class="mGrid"    id="gridCustomers" style="width:100%;border-collapse:collapse; padding-top:0px"">
        		           
			           </div>




</asp:Content>

