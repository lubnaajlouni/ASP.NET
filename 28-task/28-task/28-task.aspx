<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="28-task.aspx.cs" Inherits="_28_task._28_task" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
   
</head>
<body>
    <form id="form1" runat="server">
     
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <br />
     
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
