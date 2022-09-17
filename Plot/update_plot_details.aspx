<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="update_plot_details.aspx.cs" Inherits="Plot_update_plot_details" %>

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
  <%-- <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>--%>

<div class="detailedViewHeader">
  <p class="lvtHeaderText">View Plot Details</p>
  </div>

 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7% ">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >

 <tr>
   <td valign="middle" class="dvtCellLabeltop">Project Name :</td>
    <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="ddlproject" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
   
    </asp:DropDownList>
   </td>
     <td valign="middle" class="dvtCellLabel">Block :</td>
   <td valign="middle" class="cellInfo1" style="width:350px"><asp:TextBox ID="txtblock" runat="server" CssClass="textbox"></asp:TextBox>
       </td>
   </tr>

   <tr>
    
 
    <td valign="middle" class="dvtCellLabel">Plot  No. :</td>
   <td valign="middle" class="cellInfo1" style="width:350px; padding-top:15px"><asp:TextBox ID="Txtplotno" runat="server" CssClass="textbox"></asp:TextBox>
</td>
   <td  style="padding-top:5px; text-align:center;  height:40px">
       <asp:Button ID="submit"  CssClass="submit_botton3" runat="server" Text="Submit" onclick="submit_Click" />

 <%--  <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click"  />&nbsp;&nbsp;--%>
 
   </td>
   <td valign="middle" class="cellInfo1" ></td>
   </tr>

  

   <tr>
   <td colspan="4" style="padding-top:0px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 
 <div class="mGrid1"    id="gridCustomers" style="width:100%;border-collapse:collapse; padding-top:0px; text-align:center">
   <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   
         GridLines ="None"  AllowPaging ="True" Width="100%"
     EmptyDataText ="No Data found for the criteria you selected." CssClass="mGrid"
            PagerStyle-CssClass="pgr" onrowcommand="grdLead_RowCommand" 
         onpageindexchanging="grdLead_PageIndexChanging" 
          > 
                                
                         <Columns >
                         <asp:TemplateField  HeaderText ="Action">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>
                          
                      
                           <asp:TemplateField HeaderText="s_no" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("s_no") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                         
                            <asp:BoundField DataField ="project_name" HeaderText ="Project Name"/>
                             <asp:BoundField DataField ="block" HeaderText ="Block" />
                             <asp:BoundField DataField ="plot_no" HeaderText ="Plot No"/>
                             <asp:BoundField DataField ="Total_plot_area" HeaderText ="Total Plot Area"/>
                             
                             <asp:BoundField DataField ="plc" HeaderText ="PLC / Sq. Yrds"/>
                             <asp:BoundField DataField ="rate_per_sqr" HeaderText ="Rate / Sq. Yard "/>
                             <asp:BoundField DataField ="specification" HeaderText ="Specification"/>
                             <asp:BoundField DataField ="plot_cost" HeaderText ="Plot Cost"/>
                             <asp:BoundField DataField ="plottype" HeaderText ="Plot Type"/>
                              <asp:BoundField DataField ="plotlocation" HeaderText ="Location"/>             
                                                       
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

