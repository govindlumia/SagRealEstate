<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="asset.aspx.cs" Inherits="Admin_asset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>




<div class="detailedViewHeader">
  <p class="lvtHeaderText" style="margin-left:-5px;">Company Assets</p>
  </div>
<center style="width:100%">
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">



    <table width="100%" cellpadding="0" cellspacing="0" class="big" >
     <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
       Electronic Assets</td>
   </tr>
   
    <tr>
    <td valign="middle" class="dvtCellLabeltop">Computers :</td>
    <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txtcomp" runat="server" CssClass="textbox"></asp:TextBox>  
       

   </td>
   <td valign="middle" class="dvtCellLabeltop">Laptops :</td>
   <td valign="middle" class="cellInfo">
   <asp:TextBox ID="txtlap" runat="server" CssClass="textbox" ></asp:TextBox>
   </td>
   </tr>

   <tr>
    <td valign="middle" class="dvtCellLabeltop">Projectors :</td>
    <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txtprojector" runat="server" CssClass="textbox"  ></asp:TextBox>  
       

   </td>
   <td valign="middle" class="dvtCellLabeltop">Tablets :</td>
   <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txttab" runat="server" CssClass="textbox" 
            ></asp:TextBox>  
       

       </td>
   </tr>

   <tr>
    <td valign="middle" class="dvtCellLabeltop">Cell Phones :</td>
    <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txtcellphone" runat="server" CssClass="textbox" ></asp:TextBox>  
       

   </td>
   <td valign="middle" class="dvtCellLabeltop">Landline Phones :</td>
   <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txtlandline" runat="server" CssClass="textbox" 
           ></asp:TextBox>  
       

       </td>
   </tr>
   

   <tr>
    <td valign="middle" class="dvtCellLabeltop">Calculators :</td>
    <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txtcalcu" runat="server" CssClass="textbox" ></asp:TextBox>  
       

   </td>
   <td valign="middle" class="dvtCellLabeltop">&nbsp;</td>
   <td valign="middle" class="cellInfo">&nbsp;</td>
   </tr>


 <%--<tr>
   <td valign="middle" colspan="4" style="padding-bottom:5px; padding-top:5px; text-align:center; font-size:20px; color:#358ac2; background-color:#DDDCDD;height:20px;">
       </td>
   </tr>--%>

   </table>
 
   

 
   </div>




  <div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">

    


    <table width="100%" cellpadding="0" cellspacing="0" class="big" >
     <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
       Furniture Assets</td>
   </tr>
   
    <tr>
    <td valign="middle" class="dvtCellLabeltop">Chairs :</td>
    <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txtchairs" runat="server" CssClass="textbox" ></asp:TextBox>  
       

   </td>
   <td valign="middle" class="dvtCellLabeltop">Table :</td>
   <td valign="middle" class="cellInfo">
   <asp:TextBox ID="txttable" runat="server" CssClass="textbox" ></asp:TextBox>
   </td>
   </tr>

   <tr>
    <td valign="middle" class="dvtCellLabeltop">Almirah :</td>
    <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txtalmari" runat="server" CssClass="textbox" ></asp:TextBox>  
       

   </td>
   <td valign="middle" class="dvtCellLabeltop">Teapoy:</td>
   <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txtteapoy" runat="server" CssClass="textbox" 
           ></asp:TextBox>  
       

       </td>
   </tr>

   <tr>
    <td valign="middle" class="dvtCellLabeltop"> Computer Table :</td>
    <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txtcomputertab" runat="server" CssClass="textbox" ></asp:TextBox>  
       

   </td>
 
   
   </tr>
   

     </table>

     
    
  <center>
  
  
  <div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">

    


    <table width="100%" cellpadding="0" cellspacing="0" class="big" >
     <tr>
   <td colspan="6" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
       Two Wheelers Details</td>
   </tr>
   
    <tr>
    <td valign="middle" class="dvtCellLabeltop">No Of 2 Wheelers :</td>
    <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txtno" runat="server" CssClass="textbox" style="width:100px;"></asp:TextBox>  
       

   </td>
   <td valign="middle" class="dvtCellLabeltop">Vehicle Name :</td>
   <td valign="middle" class="cellInfo">
   <asp:TextBox ID="txtvechile" runat="server" CssClass="textbox" style="width:140px;" 
           TextMode="MultiLine"  ></asp:TextBox>
   </td>


    <td valign="middle" class="dvtCellLabeltop">Vehicle registration number :</td>
   <td valign="middle" class="cellInfo">
   <asp:TextBox ID="txtreg" runat="server" CssClass="textbox" style="width:250px;" 
           TextMode="MultiLine"></asp:TextBox>
   </td>
   </tr>

   

   
   

   


 <%--<tr>
   <td valign="middle" colspan="6" style="padding-bottom:5px; padding-top:5px; text-align:center; font-size:20px; color:#358ac2; background-color:#DDDCDD">
   <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click"/>&nbsp;&nbsp;
   <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click" style="height: 26px" />
   

   </td>
   </tr>--%>

   </table>
 
   

 
   </div>




   <div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">

    


    <table width="100%" cellpadding="0" cellspacing="0" class="big" >
     <tr>
   <td colspan="6" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
       Four Wheelers Details</td>
   </tr>
   
    <tr>
    <td valign="middle" class="dvtCellLabeltop">No Of 4 Wheelers :</td>
    <td valign="middle" class="cellInfo">
        <asp:TextBox ID="txt4wheelers" runat="server" CssClass="textbox" style="width:100px;"></asp:TextBox>  
       

   </td>
   <td valign="middle" class="dvtCellLabeltop">Vehicle Name :</td>
   <td valign="middle" class="cellInfo">
   <asp:TextBox ID="txt4vechicle" runat="server" CssClass="textbox" 
           style="width:140px;" TextMode="MultiLine"></asp:TextBox>
   </td>


    <td valign="middle" class="dvtCellLabeltop">Vehicle registration number :</td>
   <td valign="middle" class="cellInfo">
   <asp:TextBox ID="txt4reg" runat="server" CssClass="textbox" style="width:250px;" 
           TextMode="MultiLine"></asp:TextBox>
   </td>
   </tr>

   

   
   

   


 

   </table>
 
   

 
   </div>
  </center>


     <table cellpadding="0" cellspacing="0" class="big" >
     <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
       Stationery </td>
   </tr>
   
    <tr>
    <td valign="middle" class="dvtCellLabeltop" width="100px">Add Stationery Items(Seperated By Comma) 
        :</td>
    <td valign="middle" class="cellInfo" colspan="2">
        <asp:TextBox ID="txt_statnory" runat="server" CssClass="textbox" Width="400px" 
            TextMode="MultiLine" height="70px" ></asp:TextBox>  
       

   </td>

   <td class="cellInfo"></td>
 
   </tr>

   <tr>
    <td valign="middle" class="dvtCellLabeltop"></td>
    <td valign="middle" class="cellInfo">
        &nbsp;</td>
  
   </tr>

   
   

    
 <%--<tr>
   <td valign="middle" colspan="4" style="padding-bottom:5px; padding-top:5px; text-align:center; font-size:20px; color:#358ac2; background-color:#DDDCDD">
   <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click"/>&nbsp;&nbsp;
   <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click" style="height: 26px" />
   

   </td>
   </tr>--%>

  </table>
 
   
   <table width="100%" cellpadding="0" cellspacing="0" class="big" >
  
   
    
   

   


 <tr>
   <td valign="middle" colspan="4" style="padding-bottom:5px; padding-top:5px; text-align:center; font-size:20px; color:#358ac2; background-color:#DDDCDD">
   <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click"/>&nbsp;&nbsp;
   <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/reset.png" 
           onclick="reset_Click" style="height: 26px" />
   

   </td>
   </tr>

   </table>

 
   </div>


   

   </center>



</asp:Content>

