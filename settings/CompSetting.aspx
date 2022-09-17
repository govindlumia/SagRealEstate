<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompSetting.aspx.cs" Inherits="CompSetting"  Culture ="en-GB" UICulture ="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
   <link rel="Stylesheet" href="css/doplus_style.css" />
    <script type="text/javascript" src="Jscript/Menu.js"></script>
    
       <script type="text/javascript" src="js/menu.js"></script>
    <title>DOPLUS | Company Settings - HelpDesk</title>  
    
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
 <script type="text/javascript">
     function showimagepreview(input) {
         if (input.files && input.files[0]) {
             var filerdr = new FileReader();
             filerdr.onload = function (e) {
                 $('#imgprvw').attr('src', e.target.result);
             }
             filerdr.readAsDataURL(input.files[0]);
         }
     }
</script>
    <style type="text/css">
        .style1
        {
            width: 216px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style=" background-color:#A1D2F7; width:100% ">
      <table style=" background-color:#A1D2F7; width:100%">
      <tr>
      <td valign="middle" style="width:40%">
      <asp:ImageButton ID="ImgCompany" runat ="server" ImageAlign ="Middle" Width="380px" Height="105px" ImageUrl= "~/images/do-plus.png"  onclick="ImgCompany_Click" />  
   
      </td>
      <td valign="middle" style="text-align:right">
     
      </td>
      </tr>



      <%--<tr>
      <td style="padding-left:30px; padding-top:0px; padding-bottom:0px; width:30%">
      <asp:ImageButton ID="ImgCompany" runat ="server" ImageAlign ="Middle"   Width="380px" Height="105px" ImageUrl= "images/do-plus.png"  onclick="ImgCompany_Click" />  
   
       <td style="padding-left:600px; padding-bottom:60px; text-align:right; padding-right:20px; padding-top:20px">Welcome 
        <asp:Label ID="lblusername" runat="server" Text="" Font-Bold="true" ForeColor="Maroon" style="margin-right:5px"></asp:Label><br />
        <asp:HyperLink ForeColor ="#000000" NavigateUrl ="changePassword.aspx"  ID="HyperLink2" Text ="Change Password" runat ="server" Font-Bold="true" Font-Size="13px" ></asp:HyperLink> <span style="color:#000000;"> | </span>
	    <asp:LinkButton  ID="LinkButton1" CausesValidation="false" runat="server" ForeColor="#000000" Font-Bold="true" Font-Size="13px" onclick="LinkButton1_Click"> LOG OUT </asp:LinkButton>
        <span style="color:#000000;"> | </span>
               <br /> <br />
 </td>
</tr>--%>
  </table>  
 </div>
    
    <div>
    

    <div style="background-color:#000; height:30px; width:100%">
 <table  width="100%" cellpadding="0" cellspacing="0px" height="30px">
 <tr>
 <td valign="middle" style="width:30%; text-align:left; font-family:Arial, helvetica Sans-Serif;  color:maroon; padding-left:10px; font-weight:bold">
 
 </td>
<td valign="middle" style="text-align:right; color:#fff">
  <span style="color:#FFF;"> </span>
        <span style="color:#FFF;"> </span>
</td>
 </tr>
 </table>
 </div>

 <center>
<div style="width:80%; background-color:#DDDCDD; height:40px;margin-left:5px;margin-bottom:-9px;"><p style="margin-left:10px; font-family:Arial; font-size: medium; font-weight: bolder; text-align:left;margin-top:10px; "  >Company Details</p></div>
<div class="dvtContentSpace" style="width:80%;  padding:10px 10px 10px 10px">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >
         
         
   <tr>

   
  </tr>
   <tr>
   <td valign="middle" colspan="4">


   <table cellpadding="0" cellspacing="0" width="70%">
    <tr>
   <td valign="middle" class="dvtCellLabeltop" style="width:200px;">
       <p style="margin-left:10px; font-family: 'Courier New', Courier, monospace; font-size: small; font-weight: bolder; text-align:left;margin-top:10px; width: 112px;"  >COMPANY NAME :</p></td>
    <td valign="middle" class="cellInfo" style="width:350px"><asp:TextBox ID="txtcompanyname" runat="server" CssClass="textbox"></asp:TextBox></td>
 <td ><p style="width:200px"></p></td>
 
   <td valign="middle" class="dvtCellLabeltop" style="margin-left:30px">
          <p style="margin-left:10px; font-family: 'Courier New', Courier, monospace; font-size: small; font-weight: bolder; text-align:left;margin-top:10px; width: 112px;"  > COMPANY LOGO :</p>

   </td>
  <td valign="middle" class="style1">  
       <asp:FileUpload ID="filUpload" runat="server" name="filUpload" onchange="showimagepreview(this)" type="file" />
        </td>
          </tr>
          <tr>
   <td valign="middle" class="dvtCellLabel">     <p style="margin-left:10px; font-family: 'Courier New', Courier, monospace; font-size: small; font-weight: bolder; text-align:left;margin-top:10px; width: 112px;"  >CORP. OFFICE ADDRESS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</P></td>
   <td valign="middle" class="cellInfo1" style="width:350px"><asp:TextBox ID="txtcorpaddress" runat="server" CssClass="textbox" TextMode="MultiLine" Height="50px" width="150px"></asp:TextBox></td>
 <td ><p style="width:200px"></p></td>

   <td valign="middle" class="dvtCellLabel">
           <p style="margin-left:10px; font-family: 'Courier New', Courier, monospace; font-size: small; font-weight: bolder; text-align:left;margin-top:10px; width: 112px;"  > CITY &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;:</p> 

  </td>
   <td valign="middle" class="style1"><asp:TextBox ID="txtcity" runat="server" CssClass="textbox" ></asp:TextBox>
   </td>
  
   </tr>
              
 

   

   

   </table>
      <td valign="middle"> <asp:Image ID="imgprvw" runat="server" Width="170px" Height="170px" /></td>

   <tr style="width:100%;height:40px;" >
   <td colspan="5" style="padding-bottom:0px; text-align:center; background-color:#DDDCDD; height:40px;margin-top:30px;">
  
  <asp:Button id="submit" runat="server" Text="Submit" onclick="submit_Click" Width="84px" />
  <asp:Button id="btncancel" runat="server" Text="Back"  Width="84px" 
           onclick="btncancel_Click" />
   
 
   </td>
   </tr>


   </td>
   </tr>


   

   </table>
</div>


<center>
    <div id="footerwrapper">
	<div style="width:100%; background-color:#333333; height:50px">
    <table  width="960px">
    <tr>
    <td valign="middle" style="text-align:left">
    <p style="margin-top:15px">
    <a href="#" style="color:white; font-family:Calibri; font-size:12px; text-decoration:none;"><b>© 2010 DOPLUS REAL ESTATE All rights reserved</b></a><br />
    </p>
    </td>
    <td valign="middle" style="text-align:right">
    <p style="margin-top:15px">
    <a href="#" style="color:white; font-family:Calibri; font-size:12px; text-decoration:none;"><b>Powered By DOPLUS</b></a><br />
    </p>
    </td>
    </tr>
    </table>
    </div>
</div>
    </center>
   
   
    </center>
    </div>
    <%--<asp:Panel ID="paneldeleteall" runat= "server"  Visible= "false"  DefaultButton ="submit"
 style="width: 400px; z-index: 20; position: fixed; left: 400px; top: 80px; height: 330px; border:medium solid GrayText; border-width:1px" BackColor="LightGray"  >
 
 <table width ="100%" style="height: 330px" >
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
   </asp:Panel>--%>
    </form>
</body>
</html>
