<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="update_emi_details.aspx.cs" Inherits="View_sale_details" %>

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
<link rel="stylesheet" type="text/css" href="../css/menu_style.css" /><script type="text/javascript" src="../Jscript/mtmv.js"></script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Update EMI Details</p>
  </div>
    
<center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7% ">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
  <tr>
   <td valign="middle" class="dvtCellLabeltop">Project Name : </td>
   <td valign="middle" class="cellInfo">
   <asp:DropDownList ID="ddlproject" runat="server" Width="180px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
    
    </asp:DropDownList>
    
   </td>
   <td valign="middle" class="dvtCellLabeltop">Block :</td>
   <td valign="middle" class="cellInfo"><asp:TextBox ID="txtblock" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
   </td>
   </tr>

 <tr>
   
    <td valign="middle" class="dvtCellLabel">Plot No. :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txtplotno" runat="server" CssClass="textbox" Width="180px"></asp:TextBox>
    
     </td>
     <td>
      <asp:Button ID="View" runat="server" Font-Bold="true" Height="28px"  ForeColor="Black" Font-Size="10pt" Text="View" Width="91px" onclick="View_Click" CausesValidation="False" />

     </td>
 </tr>
 <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 
 <div class="mGrid1"    id="gridCustomers" style="width:100%;border-collapse:collapse; padding-top:0px;text-align:center">
                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="False" Width="100%"
                       EmptyDataText ="No Project found for the criteria you selected." 
                  CssClass="mGrid" PagerStyle-CssClass="pgr" onrowcommand="grdLead_RowCommand" > 
                                
                         <Columns >
                         <asp:TemplateField  HeaderText ="Edit">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>
                          
                           <%--<asp:TemplateField  HeaderText ="Print Invoice" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="print"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>--%>

                           <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("sno") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                    <asp:BoundField DataField ="CustomerId" HeaderText ="CustomerId"/>
                   <asp:BoundField DataField ="project_name" HeaderText ="Project Name"/>
                   <asp:BoundField DataField ="plot_no" HeaderText ="Plot No"/>
                   <asp:BoundField DataField ="registrant_name" HeaderText ="Registrant"/>
                   <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile"/>
                   <asp:BoundField DataField ="plot_cost" HeaderText ="Plot Cost"/>
                   <asp:BoundField DataField ="booking_amount" HeaderText ="Booking Amount"/>
                   <asp:BoundField DataField ="rest_amount" HeaderText ="Rest AMount"/>
                   <asp:BoundField DataField ="emi_amount" HeaderText ="Emi Amount"/>
                   <asp:BoundField DataField ="bank_and_branch" HeaderText ="Bank"/>
                   <asp:BoundField DataField ="sales_date" HeaderText ="Sale Date"/>
                   <asp:BoundField DataField ="created_on" HeaderText ="EMI Payment date"/>
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
