<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="Transport.aspx.cs" Inherits="Admin_Transport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>


<div class="detailedViewHeader">
  <p class="lvtHeaderText" style="margin-left:-5px;">Transport Details</p>
  </div>
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

   

   
   

   


 <tr>
   <td valign="middle" colspan="6" style="padding-bottom:5px; padding-top:5px; text-align:center; font-size:20px; color:#358ac2; background-color:#DDDCDD">
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
