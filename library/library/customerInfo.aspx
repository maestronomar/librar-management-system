<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="customerInfo.aspx.vb" Inherits="library.cusmomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 56%;
        }
        .auto-style2 {
            width: 77px;
        }
        .auto-style3 {
            width: 59%;
        }
        .auto-style4 {
            width: 65px;
        }
    </style>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
          <header>
                  <div class="jumbotron">
            <h1>
                Library Managemnts System

            </h1>
                         <p>
                          Wax badan aqri si aad nafsadaada kor uku qaado 
                      </p>
        </div>
            </header>
     
  <ul>
  
  <li><a href="home.aspx">Home_page</a></li>
       <li><a href="About.aspx">About</a></li>
       <li><a href="customerInfo.aspx">CustomerInfo</a></li>
       <li><a href="Add_Book.aspx">Add_book</a></li>
  <li><a href="return_book.aspx">Return_book</a></li>
     


  
</ul>
          
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryConnectionString %>" SelectCommand="SELECT * FROM [customer_info]"></asp:SqlDataSource>
                   
                       <table class="auto-style3">
                           <tr>
                               <td class="auto-style2">&nbsp;</td>
                               <td class="auto-style2">customer_id:</td>
                               <td>
                                   <asp:TextBox ID="txtid" runat="server" Height="30px" Width="289px"></asp:TextBox>
                               </td>
                               <td class="auto-style4">
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtid" ErrorMessage="reguired feild"></asp:RequiredFieldValidator>
                               </td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                               <td class="auto-style2">C_name:</td>
                               <td>
                                   <asp:TextBox ID="txtname" runat="server" Height="30px" Width="289px"></asp:TextBox>
                               </td>
                               <td class="auto-style4">
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="reguired feild"></asp:RequiredFieldValidator>
                               </td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="auto-style2">&nbsp;</td>
                               <td class="auto-style2">addres:</td>
                               <td>
                                   <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="289px"></asp:TextBox>
                               </td>
                               <td class="auto-style4">
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="reguired feild"></asp:RequiredFieldValidator>
                               </td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="auto-style2">&nbsp;</td>
                               <td class="auto-style2">tell:</td>
                               <td>
                                   <asp:TextBox ID="txttell" runat="server" Height="30px" Width="289px"></asp:TextBox>
                               </td>
                               <td class="auto-style4">
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txttell" ErrorMessage="reguired feild"></asp:RequiredFieldValidator>
                               </td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                               <td class="auto-style4">
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="auto-style2">&nbsp;</td>
                               <td class="auto-style2">&nbsp;</td>
                               <td>&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#3333CC" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="33px" Text="Save" Width="106px" />
                               &nbsp;&nbsp;&nbsp;
                                   <asp:Button ID="Button2" runat="server" BackColor="Lime" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="33px" Text="Delete" Width="106px" />
                               </td>
                               <td class="auto-style4">&nbsp;</td>
                               <td class="auto-style4">&nbsp;</td>
                               <td class="auto-style4">&nbsp;</td>
                               <td class="auto-style4">&nbsp;</td>
                               <td class="auto-style4">&nbsp;</td>
                           </tr>
                       </table>
                  
                       <table class="auto-style1">
                           <tr>
                               <td>&nbsp;</td>
                               <td>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                               <td>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="579px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                                       <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                       <Columns>
                                           <asp:CommandField ShowSelectButton="True" />
                                           <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" />
                                           <asp:BoundField DataField="C_name" HeaderText="C_name" SortExpression="C_name" />
                                           <asp:BoundField DataField="addres" HeaderText="addres" SortExpression="addres" />
                                           <asp:BoundField DataField="tell" HeaderText="tell" SortExpression="tell" />
                                       </Columns>
                                       <FooterStyle BackColor="Tan" />
                                       <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                       <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                       <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                       <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                       <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                       <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                       <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                   </asp:GridView>
                               </td>
                           </tr>
                           <tr>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                       </table>
                       
  
            
                  
    </form>
</body>
</html>
