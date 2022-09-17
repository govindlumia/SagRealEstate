<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="plot_status.aspx.cs" Inherits="Plot_plot_status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
     <link href="../css/drop.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/dropdon.js" type="text/javascript"></script>
   <link rel="../stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>




    <script type="text/javascript">
        function camelcase(input, ctrl) {
            var s = input;

            var result = s.replace(/(?:^|\s)\w/g, function (match) {
                return match.toUpperCase();
            });

            document.getElementById(ctrl).value = result;

        }
</script>
 
 
  <%--  <link rel="stylesheet" type="text/css" href="../css/menu_style.css" /><script type="text/javascript" src="../Jscript/mtmv.js"></script><link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>--%>

<div class="detailedViewHeader">
  <p class="lvtHeaderText">View Plot Status</p>
  </div>

    <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 0px;width:99.7%">
<table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Plot Details 
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabeltop" style="padding-top:15px; padding-bottom:15px">Project Name : </td>
   <td valign="middle" class="cellInfo" style="width:350px;padding-top:15px; padding-bottom:15px"">
   <asp:DropDownList ID="ddlproject" runat="server" Width="220px" BorderWidth="1px" BorderStyle="Solid" BorderColor="#dddddd"  CssClass="dropdown">
   
    </asp:DropDownList>
   </td>
 <td valign="middle" colspan="2" class="cellInfo" style="width:350px;padding-top:15px; padding-bottom:15px"">
     <asp:Button ID="submit" CssClass="submit_botton4" runat="server" Text="Submit" onclick="submit_Click"  />
  <%-- <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" onclick="submit_Click" 
           />&nbsp;&nbsp;--%>
 
   </td>
   <td></td>
   </tr>

  
   <tr>
   <td colspan="4"  style="padding-top:0px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   <tr>
 <td valign="top" class="dvtCellLabeltop">

 <div class="mGrid1" cellspacing="0" rules="cols"    id="Div3" style="width:100%;border-collapse:collapse; padding-left:0px; padding-top:0px; text-align:center">
      <asp:GridView ID="GridView1" runat ="server"  AutoGenerateColumns ="False"   GridLines ="None"  Width ="100%"

                             EmptyDataText ="No Data found for the criteria you selected." 
                             BorderColor="#CCCCCC" BorderStyle="None"> 
                         <HeaderStyle BorderColor="#a4a4a4" HorizontalAlign="Center" Font-Bold="true" Font-Names="arial"/>
                       
                         <Columns> 
 
                           <asp:BoundField DataField ="project_name" HeaderText ="Project"/>
                           <asp:BoundField DataField ="TP" HeaderText ="Total Plot" ItemStyle-Width="50%"/>
                         </Columns>
                         </asp:GridView>
        		           
			           
 </div>
  </td>

 

  <td valign="top" class="dvtCellLabeltop">
  
   <div class="mGrid1" cellspacing="0" rules="cols"    id="Div2" style="width:100%;border-collapse:collapse; padding-left:0px; padding-top:0px; text-align:center">
     <asp:GridView ID="GridView2" runat ="server"  AutoGenerateColumns ="False"   GridLines ="None"  Width ="100%"
                             EmptyDataText ="No Data found for the criteria you selected."  BorderColor="#CCCCCC" BorderStyle="None"> 
                                 
                           <Columns> 
                          
                           <asp:BoundField DataField ="PA" HeaderText ="Available" ItemStyle-Width="50%"/>
                         </Columns>
                         </asp:GridView>
        		           
			           
 </div>
  
  </td>
  <td valign="top" class="dvtCellLabeltop">
  
   <div class="mGrid1" cellspacing="0" rules="cols"   id="Div4" style="width:100%;border-collapse:collapse; padding-left:0px; padding-top:0px; text-align:center">
     <asp:GridView ID="GridView3" runat ="server"  AutoGenerateColumns ="False"   GridLines ="None"  Width ="100%"
                             EmptyDataText ="No Data found for the criteria you selected."  BorderColor="#CCCCCC" BorderStyle="None"> 
                                 
                           <Columns> 
                          
                           <asp:BoundField DataField ="HOLD" HeaderText ="Hold" ItemStyle-Width="50%"/>
                         </Columns>
                         </asp:GridView>
        		           
			           
 </div>
  
  </td>
  <td valign="top" class="dvtCellLabeltop">
  
   <div class="mGrid1" cellspacing="0" rules="cols"   id="Div5" style="width:100%;border-collapse:collapse; padding-left:0px; padding-top:0px; text-align:center">
     <asp:GridView ID="GridView4" runat ="server"  AutoGenerateColumns ="False"   GridLines ="None"  Width ="100%"
                             EmptyDataText ="No Data found for the criteria you selected."  BorderColor="#CCCCCC" BorderStyle="None"> 
                                 
                           <Columns> 
                          
                           <asp:BoundField DataField ="BKD" HeaderText ="Booked" ItemStyle-Width="50%"/>
                         </Columns>
                         </asp:GridView>
        		           
			           
 </div>
  
  </td>
  <td valign="top" class="dvtCellLabeltop">
  
   <div class="mGrid1" cellspacing="0" rules="cols"   id="Div6" style="width:100%;border-collapse:collapse; padding-left:0px; padding-top:0px; text-align:center">
     <asp:GridView ID="GridView5" runat ="server"  AutoGenerateColumns ="False"   GridLines ="None"  Width ="100%"
                             EmptyDataText ="No Data found for the criteria you selected."  BorderColor="#CCCCCC" BorderStyle="None"> 
                                 
                           <Columns> 
                          
                           <asp:BoundField DataField ="AGR" HeaderText ="Agreement" ItemStyle-Width="50%"/>
                         </Columns>
                         </asp:GridView>
        		           
			           
 </div>
  
  </td>
  <td valign="top" class="dvtCellLabeltop">
  
   <div class="mGrid1" cellspacing="0" rules="cols"   id="Div7" style="width:100%;border-collapse:collapse; padding-left:0px; padding-top:0px; text-align:center">
     <asp:GridView ID="GridView6" runat ="server"  AutoGenerateColumns ="False"   GridLines ="None"  Width ="100%"
                             EmptyDataText ="No Data found for the criteria you selected."  BorderColor="#CCCCCC" BorderStyle="None"> 
                                 
                           <Columns> 
                          
                           <asp:BoundField DataField ="REGIS" HeaderText ="Registration" ItemStyle-Width="50%"/>
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

