<%@ Page Title="" Language="C#" MasterPageFile="~/crmmaster.master" AutoEventWireup="true" CodeFile="Laser_Report.aspx.cs" Inherits="Report_Laser_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
      <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
     <link href="../css/drop.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/dropdon.js" type="text/javascript"></script>
   <link rel="../stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>

     <div class="detailedViewHeader">
  <p class="lvtHeaderText">Ladger Report</p>
  </div>
    
    <div class ="" style="width:100%" >
 <table style="width:100%">
 <tr>

<td valign="middle" class="dvtCellLabel" style="text-align:right">Search :</td>
   <td valign="middle" class="cellInfo">
       <asp:TextBox ID="txtsearch" runat="server" CssClass="textbox"></asp:TextBox>
       </td>
</tr>
 <tr>
   <td valign="middle" colspan="4" style="padding-bottom:0px; padding-top:3px; text-align:center; background-color:#DDDCDD;height:40px;"  >
       <asp:Button ID="ImageButton1" CssClass="submit_botton2" runat="server" Text="Submit" onclick="ImageButton1_Click" />
    <%--<asp:ImageButton ID="ImageButton1" runat="server" 
           ImageUrl="~/images/submitButton.png" onclick="ImageButton1_Click" />&nbsp;&nbsp;--%>
   <%--<asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/reset.png"/>--%>
   
   
   
   </td>

   </tr>
 </table>
 </div>               
 <div>
 <asp:Panel ID="Pnlpros" runat="server" Visible="false">
   
  <div>

<table width="100%" style=" background-color:#DDDDDD; margin-top:5px; height:35px ;margin-bottom:5px"  >
   
        <tr>
            <td  rowspan= "2" style="width: 100%"  >
                  <label style=" font-family:Arial; font-style:normal; font-weight:bold; color:Black ; font-size:15pt;padding-left:20px">Sale Details</label>
            </td>
             
        </tr>
        </table>

   </div>
       
         <div class="grid" cellspacing="0" rules="cols"  id="Div1" style="width:100%;border-collapse:collapse;padding-left:0px; padding-top:0px">
                         <asp:GridView ID="grdrequestid" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                             Width ="100%"

                                EmptyDataText ="No lead found for the criteria you selected." 
                           > 
                                
                         <Columns >
                      
                                
                   <asp:BoundField DataField ="project_name" HeaderText ="Project Name"/>
                  <asp:BoundField DataField ="block" HeaderText ="Block" />
                  <asp:BoundField DataField ="plot_no" HeaderText ="Plot No"/>
                   <asp:BoundField DataField ="CustomerId" HeaderText ="CustomerId"/>
                  <asp:BoundField DataField ="registrant_name" HeaderText ="Registrant Name"/>
                  <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile"/>
                  <asp:BoundField DataField ="plot_cost" HeaderText ="Plot Cost"/>
                  <asp:BoundField DataField ="booking_amount" HeaderText ="Booking Amount"/>
                  <asp:BoundField DataField ="rest_amount" HeaderText ="Rest Amount"/>
                  <asp:BoundField DataField ="no_of_emi" HeaderText ="No of Emi"/>
                  <asp:BoundField DataField ="emi_amount" HeaderText ="Emi Amount"/>
                  <asp:BoundField DataField ="sale_date" HeaderText ="Sale Date"/>
                         </Columns>
                         </asp:GridView>
             
			           </div>
 </asp:Panel>
  <asp:Panel ID="pnlquli" runat="server" Visible="false">
  <div>
    <table  width="100%" style=" background-color:#DDDDDD; margin-top:5px; height:35px ;margin-bottom:5px" >
   
        <tr>
            <td  rowspan= "2" style="width: 1080px " >
              <label style=" font-family:Arial; font-style:normal; font-weight:bold; color:Black ; font-size:15pt;padding-left:20px">EMI Details</label>
            </td>
             
        </tr>
        
      </table>
 <div class="grid" cellspacing="0" rules="cols"  id="gridCustomers" style="width:100%;border-collapse:collapse;padding-left:0px; padding-top:0px">
                         <asp:GridView ID="grdcustomer" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                             Width ="100%"

                                EmptyDataText ="No lead found for the criteria you selected." 
                             PageSize="20" 
                           > 
                                
                         <Columns >
                         
                       <asp:BoundField DataField ="project_name" HeaderText ="Project Name"/>
                        
                        <asp:BoundField DataField ="block" HeaderText ="Block"/>
                  <asp:BoundField DataField ="plot_no" HeaderText ="Plot No"/>
                  <asp:BoundField DataField ="CustomerId" HeaderText ="Customer ID"/>
                  <asp:BoundField DataField ="registrant_name" HeaderText ="Registrant"/>
                  <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile"/>
                  <asp:BoundField DataField ="plot_cost" HeaderText ="Plot Cost"/>
                  <asp:BoundField DataField ="node" HeaderText ="EMI No."/>
                 
                  <asp:BoundField DataField ="emi_amount" HeaderText ="Emi Amount"/>
                 
                  <asp:BoundField DataField ="created_on" HeaderText ="EMI Payment date"/>
                           
                         </Columns>
                         </asp:GridView>
        		           
			      

</div>
</div>
 </asp:Panel>
 </div>


</asp:Content>

