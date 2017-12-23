<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostData.aspx.cs" Inherits="PostData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Hello <% Response.Write(Request.Form["firstname"].ToString() + " " + Request.Form["lastname"].ToString()); %>
        </div>
    </form>
</body>
</html>
