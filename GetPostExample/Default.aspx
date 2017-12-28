<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="main" runat="server">
        <asp:DropDownList ID="DD" runat="server" />
        <asp:Button ID="button" runat="server" Text="Populate" OnClick="button_Click" />
        <br />
        <asp:Label ID="label" runat="server" />
    </form>
</body>
</html>
