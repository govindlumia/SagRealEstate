<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="delete_project.aspx.cs" Inherits="Project_delete_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
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

<div class="detailedViewHeader" style="margin-top:-18px">
  <p class="lvtHeaderText">Delete Project Details</p>
  </div>

 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7% ">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >

 <tr>
   <td valign="middle" class="dvtCellLabeltop">Project Name :</td>
    <td valign="middle" class="cellInfo" style="width:350px">
   <asp:DropDownList ID="ddlselectproject" runat="server" Width="220px" 
            BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd" CssClass="dropdown" 
            AutoPostBack="True" 
            onselectedindexchanged="ddlselectproject_SelectedIndexChanged">
   
    </asp:DropDownList>
   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" SetFocusOnError="true" InitialValue="0"
                            ControlToValidate="ddlselectproject" Display="Dynamic" ErrorMessage="Please Select Project  Name"></asp:RequiredFieldValidator>
   --%> 
   </td>
   <td valign="middle" class="dvtCellLabeltop"> Check Delete All Project </td>
   <td valign="middle"  class="cellInfo">

   <asp:CheckBox ID="chkdeleteall" runat ="server" Text ="Delete All "  valign="top" 
           align="left" AutoPostBack="true" Enabled="true" Visible= "true" oncheckedchanged="chkdeleteall_CheckedChanged" 
                                                    />
   <%-- <asp:Label ID="lblsms" runat ="server" Font-Bold ="true" ForeColor="Maroon"  Visible="false" ></asp:Label>--%>
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel" colspan="4" style="padding-bottom:0px; text-align:center; padding-top:5px; padding-bottom:5px">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png"  
           onclick="submit_Click"  />&nbsp;&nbsp;
 
   </td>
       
   </tr>

   <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>

  
 </tr>

  </table>
   </td>
   </tr>

   </table>
</div>
<asp:Panel ID="pnlrepairinvoice" runat= "server"  Visible= "false"  DefaultButton ="submit"
 style="width: 400px; z-index: 20; position: fixed; left: 400px; top: 300px; height: 180px; border:medium solid GrayText; border-width:1px" BackColor="LightGray"  >
 
 <table width ="100%" style="height: 180px" >
   <tr>
  <td colspan="2" style="color:Maroon" align="center">
  <asp:Label ID="lblMsg" runat ="server" Font-Bold ="false"  Visible="false" ></asp:Label>
  </td>
 </tr>      
      <tr>
<td  style="color:Blue" align="center">Project Name
 
 </td>
 <td  style="color:Blue" align="center">
 <asp:Label ID="lblpjoject" runat="server" Text=""></asp:Label>
 </td>
 </tr>
      
    
 <tr>
 <td  style="color:Blue" align="center">
  Project Location
  </td>
  <td  style="color:Blue" align="center">
  <asp:Label ID="lblcomplocation" runat ="server" Font-Bold ="false"  ></asp:Label>
  </td>
 </tr>

            
<tr>
 <td  style="color:Blue" align="center">
  Billing Company
  </td>
  <td  style="color:Blue" align="center">
  <asp:Label ID="lblbicomp" runat ="server" Font-Bold ="false"   ></asp:Label>
  </td>
 </tr>
      
             <tr>

            <td colspan="2" style="color:Maroon" align="center">
             <asp:Button ID="btndeleteproject" runat="server" Text="Yes" Width="97px" onclick="btndeleteproject_Click" 
                     />
                 <asp:Button ID="btncanceldelete" runat="server" Text="No" Width="104px" 
                     CausesValidation="False" onclick="btncanceldelete_Click" /> 
                      
                     </td>
                     </tr>
              
              
       </caption>
   </table>
   </asp:Panel>
   <asp:Panel ID="paneldeleteall" runat= "server"  Visible= "false"  DefaultButton ="submit"
 style="width: 400px; z-index: 20; position: fixed; left: 400px; top: 300px; height: 130px; border:medium solid GrayText; border-width:1px" BackColor="LightGray"  >
 
 <table width ="100%" style="height: 130px" >
   <tr>
  <td colspan="2" style="color:Maroon" align="center">
  <asp:Label ID="lblmsgall" runat ="server" Font-Bold ="false"  Visible="false" ></asp:Label>
  </td>
 </tr>      
      
 
 <tr>
  <td colspan="2" style="color:Maroon" align="center">
             <asp:Button ID="btndeleteall" runat="server" Text="Yes" Width="97px" 
                 CausesValidation="False" onclick="btndeleteall_Click" 
                     />
                 <asp:Button ID="btncancelall" runat="server" Text="No" Width="104px" 
                     CausesValidation="False" onclick="btncancelall_Click"  /> 
                      
                     </td>
                     </tr>
              
              
       </caption>
   </table>
   </asp:Panel>
   
    </center>

  </asp:Content>

