<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="changePassword.aspx.cs" Inherits="changePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>

   
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />

     <link href="../css/drop.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/dropdon.js" type="text/javascript"></script>

   <link rel="../stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>



 <table width =100% >
 <tr>
           <td class="dvtTabCache change_padswpr"  colspan=2>
               <span class="lvtHeaderText"> Change Password</span>
          </td>         
        </tr>
        <tr>
          <td align =right >
              Current Password:
          </td>
           <td>
              <asp:TextBox ID="txtCuurentPass" CssClass="textbox" runat =server TextMode =Password ></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvOldPass" runat =server ErrorMessage ="Enter current password" Display =Dynamic ControlToValidate ="txtCuurentPass"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td align =right >
              New Password:
          </td>
           <td>
              <asp:TextBox ID="txtNewPass" CssClass="textbox" runat =server TextMode =Password  ></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvNewPass" runat =server ErrorMessage ="Enter new password" Display =Dynamic ControlToValidate ="txtNewPass"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td align =right >
              Confirm Password:
          </td>
           <td>
              <asp:TextBox ID="txtConfPass" CssClass="textbox" runat =server TextMode =Password ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat =server ErrorMessage ="Enter confirm password" Display =Dynamic ControlToValidate ="txtConfPass"></asp:RequiredFieldValidator>
               <asp:CompareValidator ID="cmpConfPass" runat =server ErrorMessage ="Password does'nt match" ControlToCompare ="txtNewPass" ControlToValidate ="txtConfPass" Display =Dynamic ></asp:CompareValidator>
          </td>
        </tr>
        <tr>
          <td align =center colspan =2 >
              <asp:Button ID="btnSubmitt" CssClass="submit_botton1" runat =server Text ="Submit" 
                  onclick="btnSubmitt_Click" />
              <asp:Label ID="lblMsg" runat =server ForeColor =Red Visible =false ></asp:Label>
          </td>
           
        </tr>
    </table>
</asp:Content>
