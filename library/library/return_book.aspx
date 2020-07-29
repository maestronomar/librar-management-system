<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="return_book.aspx.vb" Inherits="library._return" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 91px;
        }
        .auto-style3 {
            width: 337px;
        }
        .auto-style4 {
            width: 70%;
            height: 268px;
        }
        .auto-style5 {
            width: 108px;
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
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryConnectionString %>" SelectCommand="SELECT * FROM [Return_book]"></asp:SqlDataSource>
                 <table class="auto-style4">
                     <tr>
                         <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                         <td class="auto-style2">Book_id:</td>
                         <td class="auto-style3">
                             <asp:TextBox ID="book_id" runat="server" Height="27px" Width="272px"></asp:TextBox>
                         </td>
                         <td rowspan="6">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style5">&nbsp;</td>
                         <td class="auto-style2">Book_name:</td>
                         <td class="auto-style3">
                             <asp:TextBox ID="book_name" runat="server" Height="27px" Width="271px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">&nbsp;</td>
                         <td class="auto-style2">Author_Book:</td>
                         <td class="auto-style3">
                             <asp:TextBox ID="Autherbook" runat="server" Height="27px" Width="272px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">&nbsp;</td>
                         <td class="auto-style2">Issue_date:</td>
                         <td class="auto-style3">
                             <asp:TextBox ID="issuebook" runat="server" Height="27px" Width="272px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">&nbsp;</td>
                         <td class="auto-style2">Returned_on</td>
                         <td class="auto-style3">
                             <asp:TextBox ID="returnedOn" runat="server" Height="27px" Width="272px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">&nbsp;</td>
                         <td class="auto-style2">&nbsp;</td>
                         <td class="auto-style3">
                             <asp:Button ID="btn" runat="server" Height="41px" Text="Add" Width="90px" BackColor="#FF66FF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="btn0" runat="server" Height="41px" Text="Exit" Width="90px" BackColor="#6699FF" />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp; </td>
                     </tr>
      </table>
s
             <table class="auto-style1">
                 <tr>
                     <td>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                     <td>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="70px" Width="361px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                             <AlternatingRowStyle BackColor="PaleGoldenrod" />
                             <Columns>
                                 <asp:BoundField DataField="Book_id" HeaderText="Book_id" SortExpression="Book_id" />
                                 <asp:BoundField DataField="Book_name" HeaderText="Book_name" SortExpression="Book_name" />
                                 <asp:BoundField DataField="Author_book" HeaderText="Author_book" SortExpression="Author_book" />
                                 <asp:BoundField DataField="Issue_date" HeaderText="Issue_date" SortExpression="Issue_date" />
                                 <asp:BoundField DataField="Returned_On" HeaderText="Returned_On" SortExpression="Returned_On" />
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
                     <td>&nbsp;</td>
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
