<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SAGONI REALSTATE</title>
</head>
<body style="background-image:url('images/bg.png'); background-repeat:repeat-x; margin:0px 0px 0px 0px">
    <form id="form1" runat="server">
    <center>
    <br /><br /><br /><br /><br /><br />
    <div  style="width:960px">
    <table width="100%">
    <tr>
    <td valign="top" colspan="2" style="text-align:center">
   <a><img alt="" src="images/sagoni-logo_ne.png" height="180px" /></a>
    </td>
    </tr>
    <tr>
    <td valign="middle" style="width:480px">
    <br /><br /><br />
    <p style="font-family:Arial, helvetica, Sans-Serif; font-size:20px; color:White; text-align:center; font-weight:bold">
    <asp:HyperLink ForeColor ="#000000" NavigateUrl ="admin_login.aspx"  ID="Hyper2" Text ="ADMIN LOGIN"
     runat ="server" onmouseover="this.style.color='#E1E1E1'" 
    onmouseout="this.style.color='white'" style="color:White" ></asp:HyperLink>

    <%--<a href="admin_login.aspx" title="Admin Login" onmouseover="this.style.color='#E1E1E1'" 
    onmouseout="this.style.color='white'" style="color:White"> ADMIN LOGIN </a>--%> </p>
    </td>
    <td valign="middle" style="width:480px">
    <br /><br /><br />
    <p style="font-family:Arial, helvetica, Sans-Serif; font-size:20px; color:White; text-align:center; font-weight:bold">
    <asp:HyperLink ForeColor ="#000000" NavigateUrl ="branch_login.aspx"  ID="Hype1" Text ="USER LOGIN"
     runat ="server" onmouseover="this.style.color='#E1E1E1'" 
    onmouseout="this.style.color='white'" style="color:White" ></asp:HyperLink>

   <%-- <a href="branch_login.aspx" title="Branch Login" onmouseover="this.style.color='#E1E1E1'" onmouseout="this.style.color='white'" style="color:White"> BRANCH LOGIN </a> 
   --%> </p>
    </td>
    </tr>
    </table>
    </div>

    
    <div style="width:100%; background-color:#D7EBFA; height:50px; margin-top:205px">
    <table  width="960px">
    <tr>
    <td valign="middle" style="text-align:left">
    <p style="margin-top:15px">
    <a href="#" style="color:black; font-family:Calibri; font-size:12px; text-decoration:none; text-shadow:1px 1px 1px white"><b>© 2015 SAGONI INDIA PRIVATE LIMITED All rights reserved</b></a><br />
    </p>
    </td>
    <td valign="middle" style="text-align:right">
    <p style="margin-top:15px">
    <a href="#" style="color:black; font-family:Calibri; font-size:12px; text-decoration:none; text-shadow:1px 1px 1px white"><b>Powered By SAGONI INDIA PRIVATE LIMITED</b></a><br />
    </p>
    </td>
    </tr>
    </table>
    </div>
    </center>
    </form>
</body>
</html>
