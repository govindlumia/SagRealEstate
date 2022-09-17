<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="update_project_details.aspx.cs" Inherits="show_project_details" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
  <p class="lvtHeaderText">View Project Details</p>
  </div>

 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >

 <tr>
   <td valign="middle" class="dvtCellLabeltop">Project Name :</td>
    <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="ddlproject" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown">
   
    </asp:DropDownList>
        <asp:Button ID="submit" CssClass="submit_botton1" runat="server" Text="Submit" onclick="View_Click" />
   </td>
  
  
   </tr>

   <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 
 <div class="mGrid1"    id="gridCustomers" style="width:100%;border-collapse:collapse; padding-top:0px; text-align:center">
       <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  AllowPaging ="True" Width="100%"
              EmptyDataText ="No Data found for the criteria you selected." CssClass="mGrid"
            PagerStyle-CssClass="pgr" onrowcommand="grdLead_RowCommand" > 
                                
                         <Columns >
                         <asp:TemplateField  HeaderText ="Action">
                         <ItemTemplate>
                        <asp:ImageButton ID="imgEdit" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>
                          
                      
                           <asp:TemplateField HeaderText="projectid" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblprojectid" runat="server" Text ='<%#Eval("project_id") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                         
                        
           
                  
                              <asp:BoundField DataField ="project_name" HeaderText ="Project Name"/>
                              <asp:BoundField DataField ="project_location" HeaderText ="Project Location"/>
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

