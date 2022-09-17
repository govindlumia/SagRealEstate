<%@ Page Language="C#" AutoEventWireup="true" CodeFile="branch_login.aspx.cs" Inherits="branch_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SAGONI REALSTATE</title>
    <style type="text/css">
        .user
        {
            
            background-repeat:no-repeat;
            border-width:1px;
             height:22px;
            padding: 5px 5px 5px 5px;  
             color:black; 
             font-size:14px;
            border-radius:5px
        }
    </style>
    <style type="text/css">
        .pass
        {
            
            background-repeat:no-repeat;
            background-position:left;
            border-width:1px;
            height:22px;
            padding: 5px 5px 5px 5px; 
            color:black; 
            font-size:14px;
            border-radius:5px
        }
    </style>
</head>
<body style="background-image:url('images/bg.png'); background-repeat:repeat-x; margin:0px 0px 0px 0px">
    <form id="form1" runat="server">
    <center>
    
    <table width="900px" style="border-radius:10px; border:3px solid #046AA2; background:#D7EBFA; height:300px; margin-top:150px">
    <tr>
    <td valign="middle" style="text-align:center; width:450px; padding-left:10px">
     <img alt="" src="images/sagoni-logo_ne.png" width="400px" height="220px" />
    </td>
    <td valign="top" style="text-align:left; padding-left:40px; padding-top:35px; background-color:#007EA8;border-radius:10px; border:2px solid #046AA2;">
    
    <table width="400px" style="background-color:#007EA8;border-radius:10px;font-family:Arial; font-weight:bold; font-size:15px; color:White; vertical-align:middle">
    <%--<tr>
     <td valign="top" colspan="3" style="text-align:center">
     <img alt="" src="images/jsrm-admin-logo.png"  width="250px" height="140px"/>
     </td>
    </tr>--%>
    
  <tr>
    <td valign="top" colspan="3">
    <p style="color:white; font-size:20px; text-align:left;padding-bottom:5px ; padding-top:5px; padding-left:10px"> &nbsp;<a><img alt="" src="images/admin.png" width="30px" height="30px" align="absmiddle" /></a> BRANCH LOGIN</p>
    </td>
    </tr>
    <tr>
    <td valign="middle" style="width:120px; padding-bottom:5px; padding-top:5px; padding-left:10px; text-align:left">Username </td>
    <td valign="middle" style="width:30px; padding-bottom:5px; padding-top:5px; text-align:left">:</td>
    <td valign="middle" style="width:300px; padding-bottom:5px; padding-top:5px; padding-left:10px; text-align:left">
    <asp:TextBox ID="txtcode" runat="server" Width="220px" BorderWidth="1px" BorderStyle="None" BorderColor="Transparent" BackColor="White" CssClass="user" ></asp:TextBox>
    <br /><asp:RequiredFieldValidator ID="rfvempcode" runat="server" ControlToValidate="txtcode" ForeColor="Red"
   Display="Dynamic" ErrorMessage="Please Enter correct User Code" ValidationGroup="Eng"></asp:RequiredFieldValidator>
 
 
    </td>
    </tr>
    <tr>
    <td valign="middle" style="width:130px; padding-bottom:5px; padding-top:5px; padding-left:10px; text-align:left">Password</td>
    <td valign="middle" style="width:20px; padding-bottom:5px; padding-top:5px; text-align:left">:</td>
    <td valign="middle" style="width:300px; padding-bottom:5px; padding-top:5px; padding-left:10px; text-align:left">
    <asp:TextBox ID="txtPassword" runat="server" Width="220px" BorderWidth="1px" 
            BorderStyle="None" BorderColor="Transparent" BackColor="White" CssClass="pass" 
            TextMode="Password" ></asp:TextBox><br />
     <asp:RequiredFieldValidator ID="rfvEngPass" runat="server" ControlToValidate="txtPassword" ForeColor="Red"
   Display="Dynamic" ErrorMessage="Please Enter correct Password" ValidationGroup="Eng"></asp:RequiredFieldValidator>
      
    </td>
    </tr>
     <tr>
    <td valign="middle" style="width:130px; padding-bottom:5px; padding-top:5px"></td>
    <td valign="middle" style="width:20px; padding-bottom:5px; padding-top:5px; text-align:left"></td>
    <td valign="middle" style="width:300px; padding-bottom:5px; padding-top:5px; padding-left:10px; text-align:left">
    <asp:ImageButton ID="btnlogin" runat="server" ImageUrl="~/images/login.png"  onclick="btnlogin_Click"/>
    &nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/reset.png"  />
    <asp:Label ID="lblmsg" runat="server"  ForeColor="Red" ></asp:Label>
    </td>
    </tr>
    </table>

    
   <p style="font-family:Candara; font-size:14px; color:black; text-align:right;font-weight:bold; padding-right:100px; margin-top:50px">
    <a href="admin_login.aspx" title="Admin Login" onmouseover="this.style.color='#000'" onmouseout="this.style.color='white'" style="color:white"> ADMIN LOGIN </a> 
    </p>
    </td>
    </tr>
    </table>
   
    </center>
    </form>
</body>
</html>
