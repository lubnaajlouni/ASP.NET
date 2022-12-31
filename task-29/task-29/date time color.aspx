<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="date time color.aspx.cs" Inherits="task_29.date_time_color" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Width="92px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                 <asp:ListItem>black</asp:ListItem>
                <asp:ListItem>green</asp:ListItem>
                <asp:ListItem>red</asp:ListItem>
                <asp:ListItem>blue</asp:ListItem>
              
            </asp:DropDownList>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
