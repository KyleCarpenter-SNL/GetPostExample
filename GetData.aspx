﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetData.aspx.cs" Inherits="GetData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Hello <% Response.Write(Request.QueryString["firstname"].ToString() + " " + Request.QueryString["lastname"].ToString()); %>
        </div>
    </form>
</body>
</html>