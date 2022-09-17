<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Token_Invoice.aspx.cs" Inherits="Token_Invoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>SAGONI INDIA - Invoice Format </title>
</head>
<body style="margin:0px 0px 0px 0px">
    <form id="form1" runat="server">
    <center>
    <div style="width:960px; border: 1px solid #8C8C8C; font:11px tahoma, Arial, Helvetica, sans-serif; padding:2px 2px 2px 2px ">
    <table width="100%">
    <tr>
    <td valign="middle" style="text-align:center;font-family:Candara; font-size:20px; padding-bottom:5px; padding-top:5px">INVOICE DETAILS</td>
    </tr>
    <tr>
    <td valign="top" style="text-align:center">
            <img src="images/bkr_logo.png" Width="120px" Height="50px" />

   <%--   <asp:Image ID="imgprvw1" runat="server" Width="380px" Height="105px"  /> --%>
    <%--<img alt="" src="images/jsrm-logo.png" Width="180px" Height="100px"/>--%>
    </td>
    </tr>
    <tr>
   
    <td style="font-size:14px; font-family:Calibri; font-style:normal; font-weight:bold">
    <asp:Label ID="lblcompname" runat="server" style="margin-left:390px" > </asp:Label> <br /> <asp:Label ID="lbladdress" runat="server"   style="margin-left:400px"> </asp:Label> <br /><asp:Label ID="lblcity" runat="server" style="margin-left:440px" ></asp:Label>
    </td>
    </tr>
    </table>
   <%-- INVOICE DETAILS--%>
        <table width="100%"  style="border:1px solid #8C8C8C">
    <tr>
    <td valign="top" style="width:480px; text-align:left; padding-top:5px">
    <table cellspacing="0" cellpadding="4" style="float:left; margin:0px 0px 2px; width:300px;" border="1" bordercolor="#8C8C8C" >
	<tr>
     <td width="102" valign="top" >Registrant Name : </td>
	<td width="176" valign="top"  ><asp:Label ID="lblregistrantName" runat=server ></asp:Label></td>
	</tr>
	<tr>
    <td valign="top">Address :</td>
    <td valign="top"><asp:Label ID="lbladd" runat=server ></asp:Label></td>
	</tr>
    <tr>
    <td valign="top">Mobile :</td>
    <td valign="top"><asp:Label ID="lblMobile" runat=server ></asp:Label></td>
	</tr>
   <%-- <tr>
    <td valign="top">E-mail Id :</td>
    <td valign="top"><asp:Label ID="lblemail" runat=server ></asp:Label></td>
	</tr>--%>
   </table>
    </td>
    <td valign="middle" style="width:480px; text-align:left; padding-top:5px">
    <table cellspacing="0" cellpadding="4" style="float:right; margin:0px 0px 2px; width:300px;" border="1" bordercolor="#8C8C8C" >
	<%--<tr>
    <td width="102" valign="top" >Company Name :</td>
	<td width="176" valign="top"><asp:Label ID="lblcompanyname" runat=server ></asp:Label></td>
	</tr>--%>
	<tr>
    <td valign="top">Branch Name :</td>
    <td valign="top"><asp:Label ID="lblbranchname" runat=server ></asp:Label></td>
	</tr>
    <tr>
    <td valign="top">Date  :</td>
    <td valign="top"><asp:Label ID="lbldate" runat=server ></asp:Label></td>
	</tr>
     <tr>
    <td valign="top">Booked BY(Employee)  :</td>
    <td valign="top"><asp:Label ID="lbl_emp" runat=server ></asp:Label></td>
	</tr>
     <tr>
    <td valign="top">Booked BY(Agent)  :</td>
    <td valign="top"><asp:Label ID="lbl_agent" runat=server ></asp:Label></td>
	</tr>
    
   <%-- <tr>
    <td valign="top">Invoie No. :</td>
    <td valign="top"><asp:Label ID="lblinvoice" runat=server ></asp:Label></td>
	</tr>--%>
   
</table>
    
    </td>
    </tr>
    </table>

    <table width="100%" cellpadding="0" cellspacing="0" border="1" bordercolor="#8C8C8C">
<tr style="font-weight:bold;"><td valign="top" height="30">
	<table width="100%" cellpadding="2" cellspacing="0" >
    <tr>
    <td valign="middle" colspan="8" style="padding-bottom:5px; padding-top:5px ; text-align:left; font-size:15px; padding-left:5px">SALE DESCRIPTION</td>
    </tr>

    	    <tr bgcolor="#CECECE" style="height:25px">
		
        <td width="10%" align="center" valign="middle">Project
		  </td>
           <td width="10%" align="center" valign="middle">Block</td>
          <td width="10%" align="center" valign="middle">Plot No.</td>
		
		<td width="10%" align="center" valign="middle">Payment Mode</td>
		
		<td width="10%" align="center" valign="middle">Cheque No.</td>
		<td width="10%" align="center" valign="middle">Bank & Branch</td>

        <td width="10%" align="center" valign="middle">Ag. Date</td>
		
		<td width="10%" align="center" valign="middle">Time Period</td>
		<td width="10%" align="center" valign="middle">Rate/Sq.Yard</td>
        <td width="10%" align="center" valign="middle">Plot Size</td>
		<%--<td width="15%" align="center" valign="middle">Sale Date</td>--%>
	</tr>
	</table>
</td></tr>
<tr><td valign="top">
	<table width="100%" cellpadding="5" cellspacing="0">
	<tr>
		 <td width="10%" valign="top"  align="center"style="border-right:2px solid #8C8C8C"><asp:Label ID="lblprojectname" runat=server ></asp:Label></td>
		
        <td width="10%" valign="top"align="center" style="border-right:2px solid #8C8C8C"><asp:Label ID="lblarea" runat=server ></asp:Label></td>
		<td width="10%" valign="top" align="center" style="border-right:2px solid #8C8C8C"><asp:Label ID="lblplotno" runat=server ></asp:Label></td>
       
        <td width="10%" valign="top" align="center" style="border-right:2px solid #8C8C8C"><asp:Label ID="lblpaymentmode" runat=server ></asp:Label></td>
		
		<td width="10%" valign="top" align="center" style="border-right:2px solid #8C8C8C"><asp:Label ID="lblcheck" runat=server ></asp:Label></td>
		<td width="10%" valign="top" align="center" style="border-right:2px solid #8C8C8C"><asp:Label ID="lblbank" runat=server ></asp:Label></td>
		
        <td width="10%" valign="top" align="center" style="border-right:2px solid #8C8C8C"><asp:Label ID="lblagdate" runat=server ></asp:Label></td>
		
		<td width="10%" valign="top" align="center" style="border-right:2px solid #8C8C8C"><asp:Label ID="lbltmperiod" runat=server ></asp:Label></td>
		<td width="10%" valign="top" align="center" style="border-right:2px solid #8C8C8C"><asp:Label ID="lblrate" runat=server ></asp:Label></td>
        	<td width="10%" valign="top" align="center" style="border-right:2px solid #8C8C8C"><asp:Label ID="lblsize" runat=server ></asp:Label></td>
		
        
        <%--<td width="15%" align="center" valign="top"><asp:Label ID="lblmonths" runat=server ></asp:Label></td>--%>
	</tr>
	</table>
</td></tr>
<%--<tr><td valign="top">
	<table width="100%" cellpadding="5" cellspacing="0">
	<tr>
    <td width="10%" valign="top" style="border-right:2px solid #8C8C8C"></td>
		<td width="10%" valign="top" style="border-right:2px solid #8C8C8C"></td>
		
		<td width="10%" valign="top" style="border-right:2px solid #8C8C8C"></td>
		<td width="10%" valign="top" style="border-right:2px solid #8C8C8C"></td>
        <td width="10%" valign="top" style="border-right:2px solid #8C8C8C"></td>
		<td width="10%" align="right" valign="top" style="border-right:2px solid #8C8C8C"></td>
        <td width="10%" valign="top" style="border-right:2px solid #8C8C8C"></td>
        <td width="10%" valign="top" style="border-right:2px solid #8C8C8C"></td>
		<td width="10%" align="right" valign="top" style="border-right:2px solid #8C8C8C"></td>
        <td width="10%" align="right" valign="top" style="border-right:2px solid #8C8C8C"></td>
	<%--	<td width="15%" align="right" valign="top">&nbsp;</td>--%>
		
	</tr>
	</table>
</td></tr>


<tr><td>
	<table width="100%" cellpadding="0" cellspacing="0" height="50">
	<tr>
	<td valign="middle" style="padding-left:5px; text-align:left; line-height:20px; padding-top:5px">Amount in words:&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblAmtWords" runat=server ></asp:Label>  &nbsp;  Only <br />
    <b>NOTE : Token amount is not refundable at any case.</b>
     </td>
	<td width="30%" valign="top" style="text-align:left; padding-left:5px">
	<table width="100%">
    <tr>
    <td valign="middle" style="width:140px; padding-bottom:3px; padding-top:3px">Token Amount :</td>
    <td valign="middle" style="padding-bottom:3px; padding-top:3px">
        <asp:Label ID="lbltokenamount" runat="server"></asp:Label>
        </td>
    </tr>
     <tr>
    <%--<td valign="middle" style="width:140px; padding-bottom:3px; padding-top:3px">Recieveed Amount :</td>
    <td valign="middle" style="padding-bottom:3px; padding-top:3px">
        <asp:Label ID="lblrecieveamount" runat="server"></asp:Label>
         </td>--%>
    </tr>
    </table>	
		
		</td>
	</tr>
    </table>
	</td>
    </tr>	
   </table>

   <br />

   <%--<table width="100%" cellpadding="0" cellspacing="0" border="1" bordercolor="#8C8C8C">
<tr style="font-weight:bold;"><td valign="top" height="30">
	<table width="100%" cellpadding="2" cellspacing="0" >
    <tr>
    <td valign="middle" colspan="2" style="padding-bottom:5px; padding-top:5px ; text-align:left; font-size:15px; padding-left:5px">NEXT DUES PAYMENT DETAILS</td>
    </tr>

    	<tr bgcolor="#CECECE">
		<td width="50%" align="center" valign="middle">DUE DATE</td>
		<td width="50%" align="center" valign="middle">EMI AMOUNT</td>
	</tr>
	</table>
   </td></tr>
    <tr>
    <td valign="top">
	<table width="100%" cellpadding="5" cellspacing="0">
	<tr>
		<td width="50%" valign="top" align="center" style="border-right:2px solid #8C8C8C"><asp:Label ID="lblduedate" runat=server ></asp:Label></td>
        <td width="50%" valign="top"  align="center"style="border-right:2px solid #8C8C8C"><asp:Label ID="lblemiamount" runat=server ></asp:Label></td>
		</tr>
	</table>
</td>
</tr>
   <tr>
    <td valign="top">
	<table width="100%" cellpadding="5" cellspacing="0">
	<tr>
		<td width="50%" valign="top" style="border-right:2px solid #8C8C8C"></td>
		<td width="50%" valign="top" style="border-right:2px solid #8C8C8C"></td>
		
		
	</tr>
	</table>
    </td>
    </tr>

   	
   </table>--%>
   <br />
   <table width="100%">
   <tr>
   <td valign="top" style="width:480px; padding-left:10px; text-align:left">Account Signatory</td>
   <td valign="top" style="width:480px; padding-right:10px; text-align:right">Authorized Signatory</td>
   </tr>
   </table>

    </div>
    </center>
    </form>
</body>
</html>
