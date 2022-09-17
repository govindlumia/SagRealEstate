<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SAGONI REAL ESTATE</title>


    <link href="css/mycss.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .user
        {
            
            background-repeat:no-repeat;
            border-width:1px;
             height:22px;
            padding: 5px 5px 5px 5px;  
             color:black; 
             font-size:14px;
            border-radius:5pxbackground-color: #f9f9f9;
width: 220px;
border: 1px solid rgb(204, 204, 204);box-shadow: 0px 1px 2px #c9c9c9;
        }
        
        .admin_login{/*background-color: rgb(228, 227, 227);*/
border-radius: 10px;
font-family: Arial;

font-size: 15px;
color: rgb(60, 60, 60);
vertical-align: middle;}

        
         .pass
        {
            
            background-repeat:no-repeat;
            background-position:left;
            border-width:1px;
            height:22px;
            padding: 5px 5px 5px 5px; 
            color:black; 
            font-size:14px;
            border-radius:5pxbackground-color: #f9f9f9;
width: 220px;
border: 1px solid rgb(204, 204, 204);box-shadow: 0px 1px 2px #c9c9c9;
        }
        
        
        .botton1{background-color: #14b45a;
cursor: pointer;
border: 1px solid #12ab55;
margin-top: 10px;
outline: none;
padding: 7px 0 7px 0;
width: 89%;
text-align: center;
font-size: 18px;
font-family: inherit;
color: #fff;
font-weight: bold;}

.botton1:hover{background-color: #0e9047;
cursor: pointer;
border: 1px solid #0b8340;
margin-top: 10px;
outline: none;
padding: 7px 0 7px 0;
width: 89%;
text-align: center;
font-size: 18px;
font-family: inherit;
color: #fff;
font-weight: bold;}


.clent{padding: 10px 0px;
text-align: center;
color: rgb(51, 51, 51);
font-size: 16px;}

.login_clent{padding-left: 32%;
color: red;
text-decoration: underline;
}
        
        
    </style>
</head>
<body style="background-color:#fff; margin:0px 0px 0px 0px">
    <form id="form1" runat="server">
    <center>

    <div class="header"><a class="logo" href="http://www.sagoni.com/"> SAGONI </a>
  <div class="signing"> <a style="display: inline-block;" class="signup" href="http://www.sagoni.com/contact_us.aspx" onclick="_gaq.push(['_trackEvent', 'crm', 'top', 'signup']);">CONTACT US NOW</a> <a style="display: inline-block;" class="signin" href="http://www.sagoni.com/" onclick="_gaq.push(['_trackEvent', 'crm', 'top', 'signin']);">SAGONI</a> </div>



            <ul class="menu"> 
             <li class="sales-marketing selected"><a href="#" >CRM Software</a></li> 
             <li class="email-collab"><a href="#">Billing Software</a> </li> 
             <li class="help-desk"><a href="#">Inventory Management Software</a> </li> 
             <li class="finance"><a href="#">Real Estate Management Software</a> </li> 
             <li class="hr"><a href="#">Office Management Software</a> </li> 
            <%-- <li class="business-proc"><a href="#">Business Process</a> </li>--%>
             </ul>
          </div>


    
    <table width="500px">
    <tr>
    <h1 class="sign_head"> SAGONI REAL ESTATE</h1>
    <td valign="top" class="signin_part">
    
    <table class="admin_login">
   <%-- <tr>
     <td valign="top" colspan="3" style="text-align:center">
     <img alt="" src="images/jsrm-admin-logo.png"  width="250px" height="140px"/>
     </td>
    </tr>
    --%>
    <%--<tr>
    <td valign="top" colspan="3">
    <p style="color:white; font-size:20px; text-align:left;padding-bottom:5px ; padding-top:5px; padding-left:10px"> &nbsp;<a><img alt="" src="images/admin.png" width="30px" height="30px" align="absmiddle" /></a> ADMIN LOGIN</p>
    </td>
    </tr>--%>
    <tr>
    <td valign="middle" style="width:120px; padding-bottom:5px; padding-top:5px; padding-left:10px; text-align:left">Username </td>
    <td valign="middle" style="width:30px; padding-bottom:5px; padding-top:5px; text-align:left">:</td>
    <td valign="middle" style="width:300px; padding-bottom:5px; padding-top:5px; padding-left:10px; text-align:left">
    <%--<asp:TextBox ID="txtcode" runat="server" Width="220px" BorderWidth="1px" BorderStyle="None" 
    BorderColor="Transparent" BackColor="White" CssClass="user" ></asp:TextBox>--%>
    
 <asp:TextBox ID="txtcode" runat="server" CssClass="user"></asp:TextBox> <br />
  
  <asp:RequiredFieldValidator ID="rfvempcode" runat="server" ControlToValidate="txtcode" ForeColor="Red"
   Display="Dynamic" ErrorMessage="Please Enter correct User Code" ValidationGroup="Eng"></asp:RequiredFieldValidator>
 
    </td>
    </tr>
    <tr>
    <td valign="middle" style="width:130px; padding-bottom:5px; padding-top:5px; padding-left:10px; text-align:left">Password</td>
    <td valign="middle" style="width:20px; padding-bottom:5px; padding-top:5px; text-align:left">:</td>
    <td valign="middle" style="width:300px; padding-bottom:5px; padding-top:5px; padding-left:10px; text-align:left">
    <asp:TextBox ID="txtPassword" runat="server"  CssClass="pass" TextMode="Password"></asp:TextBox>
    <br />
       <asp:RequiredFieldValidator ID="rfvEngPass" runat="server" ControlToValidate="txtPassword" ForeColor="Red"
   Display="Dynamic" ErrorMessage="Please Enter correct Password" ValidationGroup="Eng"></asp:RequiredFieldValidator>
 
    </td>
    </tr>
     <tr>
    <td valign="middle" style="width:130px; padding-bottom:5px; padding-top:5px"></td>
    <td valign="middle" style="width:20px; padding-bottom:5px; padding-top:5px; text-align:left"></td>
    <td valign="middle" style="width:300px; padding-bottom:5px; padding-top:5px; padding-left:10px; text-align:left">

    <asp:Button ID="btnlogin" CssClass="botton1" runat="server" Text="Sign In" onclick="btnlogin_Click" />

        

    <%--<asp:ImageButton ID="btnlogin" runat="server" ImageUrl="~/images/login.png" 
            onclick="btnlogin_Click"/>
--%>
    &nbsp;
  
    <asp:Label ID="lblmsg" runat="server"  ForeColor="Red" ></asp:Label>
    </td>
    </tr>
    </table>


    

   <p style="font-family:Candara; font-size:14px; color:black; text-align:right;font-weight:bold; padding-right:100px; margin-top:0px">
    <a href="branch_login.aspx" title="User Login" onmouseover="this.style.color='#000'" onmouseout="this.style.color='white'" style="color:white"> USER LOGIN </a> 
    </p>
    </td>
    </tr>
    </table>
   
    </center>
    </form>
</body>
</html>
