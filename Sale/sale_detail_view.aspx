<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="sale_detail_view.aspx.cs" Inherits="Sale_sale_detail_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" type="text/css"  href="../themes/softed/style.css">
  <%--  <link rel="stylesheet" href="../css/MenuMatic.css" type="text/css" media="screen" charset="utf-8" />--%>
 <%--<script type ="text/javascript" >
     function displayLoadingImage() {
         var imgLoading = document.getElementById("<%=imgLoading.ClientID%>");

         imgLoading.style.visibility = "visible";

     }
 </script>--%>
 <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
     <link href="../css/drop.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/dropdon.js" type="text/javascript"></script>
   <link rel="../stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>




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
<%--<link rel="stylesheet" type="text/css" href="../css/menu_style.css" /><script type="text/javascript" src="../Jscript/mtmv.js"></script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>--%>

<div class="detailedViewHeader">
  <p class="lvtHeaderText">View Sale Details</p>
  </div>

 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7% ">
<table width="70%" cellpadding="0" cellspacing="0" class="big" >

 <tr>
   <td valign="middle" class="dvtCellLabeltop">Project Name :</td>
    <td valign="middle" class="cellInfo" style="width:350px">
    <asp:DropDownList  ID="ddlproject" runat="server"  Width="220px" BorderWidth="1px" BorderStyle="Solid" 
   BorderColor="#dddddd" CssClass="dropdown"></asp:DropDownList>
   
   </td>
   <td valign="middle" class="dvtCellLabeltop">Search(Name/Mobile/CustomerID) </td>
    <td valign="middle" class="cellInfo" style="width:350px">
   <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
   </td>
  
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel" colspan="4" style="padding-bottom:0px; text-align:center; padding-top:15px; padding-bottom:15px">
    <asp:Button ID="View" CssClass="submit_botton1"  runat="server" 
          Text="View"  onclick="View_Click1" />
 
   </td>
   </tr>

   <tr>
   <td colspan="4" style="padding-top:0px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 
 <div class="mGrid1" id="gridCustomers" style="width:100%;border-collapse:collapse; padding-top:0px;text-align:center">
                         <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="true" Width="100%" CssClass="mGrid" 
                             onrowcommand="grdLead_RowCommand1" 
                             onpageindexchanging="grdLead_PageIndexChanging" PageSize="30"> 
                                
                         <Columns >
                       <asp:TemplateField  HeaderText ="Edit">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>
                          
                           <asp:TemplateField  HeaderText ="Print Invoice" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="print"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>
                           <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("sno") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                      
                  <asp:BoundField DataField ="project_name" HeaderText ="Project Name"/>
                  <asp:BoundField DataField ="block" HeaderText ="Block" />
                  <asp:BoundField DataField ="plot_no" HeaderText ="Plot No"/>
                   <asp:BoundField DataField ="CustomerId" HeaderText ="CustomerId"/>
                  <asp:BoundField DataField ="registrant_name" HeaderText ="Registrant Name"/>
                  <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile"/>
                  <asp:BoundField DataField ="plot_cost" HeaderText ="Plot Cost"/>
                  <asp:BoundField DataField ="booking_amount" HeaderText ="Booking Amount"/>
                  <asp:BoundField DataField ="rest_amount" HeaderText ="Rest Amount"/>
                  <asp:BoundField DataField ="no_of_emi" HeaderText ="No of Emi"/>
                  <asp:BoundField DataField ="emi_amount" HeaderText ="Emi Amount"/>
                  <asp:BoundField DataField ="sale_date" HeaderText ="Sale Date"/>
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

