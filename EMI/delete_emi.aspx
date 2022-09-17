<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="delete_emi.aspx.cs" Inherits="EMI_delete_emi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css"  href="../themes/softed/style.css">
  <%--  <link rel="stylesheet" href="../css/MenuMatic.css" type="text/css" media="screen" charset="utf-8" />--%>
 <%--<script type ="text/javascript" >
     function displayLoadingImage() {
         var imgLoading = document.getElementById("<%=imgLoading.ClientID%>");

         imgLoading.style.visibility = "visible";

     }
 </script>--%>
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
<link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
<script type="text/javascript" src="../Jscript/mtmv.js"></script>
<link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Delete EMI Details</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7% ">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
  <tr>
   <td valign="middle" class="dvtCellLabeltop">Project Name : </td>
   <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="ddlproject" runat="server" Width="200px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true" InitialValue="0"
   ControlToValidate="ddlproject" Display="Dynamic" ErrorMessage="Enter Project Name"></asp:RequiredFieldValidator>
    
   </td>
   <td valign="middle" class="dvtCellLabeltop">Block :</td>
   <td valign="middle" class="cellInfo"><asp:TextBox ID="txtblock" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                             ControlToValidate="txtblock" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
   </td>
   </tr>

 <tr>
    
    <td valign="middle" class="dvtCellLabel">Plot No. :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotno" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" SetFocusOnError="true" 
                            ControlToValidate="Txtplotno" Display="Dynamic" ErrorMessage="Enter Plot No"></asp:RequiredFieldValidator>
     </td>
     <td>
      <asp:Button ID="View" runat="server" Font-Bold="true" Height="28px"  
         ForeColor="Black" Font-Size="10pt" Text="View" Width="91px" 
         onclick="View_Click" /><asp:Label ID="lblsms" runat ="server" Font-Bold ="True"  Visible="False" 
         BorderColor="#993300" ForeColor="#990000" ></asp:Label>
     </td>
 </tr>
<tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
  <asp:Panel ID="pnlback" runat= "server"  Visible= "true">
 <div class="mGrid1"    id="gridCustomers" style="width:100%;border-collapse:collapse; padding-top:0px;text-align:center">
                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="False" Width="100%" CssClass="mGrid" 
                             onrowdeleting="grdLead_RowDeleting"> 
                                
                         <Columns >
                      <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("sno") %>'
                                        CommandName="Delete">Delete</asp:LinkButton>
                                </ItemTemplate>
                                </asp:TemplateField>
                          <%-- <asp:TemplateField  HeaderText ="Delete EMI" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="Delete"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>--%>

                         
                                 <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("sno") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 
                   <asp:BoundField DataField ="project_name" HeaderText ="Project Name"/>
                   <asp:BoundField DataField ="plot_no" HeaderText ="Plot No"/>
                   <asp:BoundField DataField ="registrant_name" HeaderText ="Registrant"/>
                   <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile"/>
                   <asp:BoundField DataField ="plot_cost" HeaderText ="Plot Cost"/>
                   <asp:BoundField DataField ="booking_amount" HeaderText ="Booking Amount"/>
                   <asp:BoundField DataField ="rest_amount" HeaderText ="Rest AMount"/>
                   <asp:BoundField DataField ="emi_amount" HeaderText ="Emi Amount"/>
                   <asp:BoundField DataField ="bank_and_branch" HeaderText ="Bank"/>
                    
                   <asp:BoundField DataField ="sales_date" HeaderText ="Sales Date"/>
                   <asp:BoundField DataField ="created_on" HeaderText ="EMI Payment Date"/>
                         </Columns>
                       
                         </asp:GridView>
        		           
			           </div>
</asp:Panel>
 </td>
  
 </tr>

  </table>
   </td>
   </tr>
 
  </table>
 </div>

   </center>
   
</asp:Content>

