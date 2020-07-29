<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Add_Book.aspx.vb" Inherits="library.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 200px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 93px;
        }
        .auto-style4 {
            width: 305px;
        }
        .auto-style5 {
            width: 65%;
            height: 272px;
        }
        .auto-style6 {
            width: 509px;
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
              
        <div class="auto-style1">
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryConnectionString %>" SelectCommand="SELECT * FROM [add_book]"></asp:SqlDataSource>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">Book_id:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtid" runat="server" Height="31px" Width="260px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtid" ErrorMessage="Required Fied"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">Book_name:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtname" runat="server" Height="31px" Width="260px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="Reguired feild"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">Edition:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtyear" runat="server" Height="31px" Width="260px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtedition" ErrorMessage="Reguired feild"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">Author:<br />
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtouther" runat="server" Height="31px" Width="260px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtouther" ErrorMessage="Reguired feild"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;Publishing year:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtedition" runat="server" Height="31px" Width="260px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtyear" ErrorMessage="Reguired feild"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Text="Save" Width="65px" />
&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Update" Width="82px" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Delete" Width="74px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="book_Id" HeaderText="book_Id" SortExpression="book_Id" />
                                <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
                                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                                <asp:BoundField DataField="Publishing_year" HeaderText="Publishing_year" SortExpression="Publishing_year" />
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                    &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />

   
            
        </div>
    </form>
</body>
</html>
