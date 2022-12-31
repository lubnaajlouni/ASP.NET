<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login form.aspx.cs" Inherits="task_29.login_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 15px"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 14px"></asp:TextBox>
        <br />
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="remember me" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="login" />
    </form>
</body>
</html>
