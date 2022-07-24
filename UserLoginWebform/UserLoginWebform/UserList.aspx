<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="UserList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 344px;
        }
    </style>
</head>
<body style="height: 288px">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="257px" Width="575px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Ad" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Soyad" SortExpression="Surname" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField ShowDeleteButton="True" DeleteText="Sil" EditText="Düzenle" InsertText="Ekle" UpdateText="Düzenle" />
                <asp:CommandField ShowEditButton="True" UpdateText="Güncelle" EditText="Düzenle" InsertText="Ekle" NewText="Yeni" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserLoginDBConnectionString %>" DeleteCommand="Delete from [User] where Id=@Id" SelectCommand="SELECT [Id], [Name], [Surname], [Email] FROM [User]" UpdateCommand="Update [User] Set Name=@Name, Surname=@Surname, Email=@Email Where Id=@Id" InsertCommand="Insert Into Values [User]  [Name], [Surname],[Email],[Password] Values(@Name, @Surname, @Email, @Passwoord)"></asp:SqlDataSource>
    </form>
</body>
</html>
