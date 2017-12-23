<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function GetData() {
            $.ajax({
                type: "POST",
                url: "Default.aspx/GetNameData",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function OnSuccess(r) {
            var ddlCustomers = $("[id*=ddlNames]");
            ddlCustomers.empty().append('<option selected="selected" value="0">Please select</option>');
            for (var i = 0; i < r.d.length; i++) {
                ddlCustomers.append('<option>'+r.d[i]+'</option>');
            }
        }
        function Validate(type)
        {
            var fn = document.forms[type][type + "FNBox"].value;
            var ln = document.forms[type][type + "LNBox"].value;

            if(fn == "" || ln == "")
            {
                alert("Name boxes must be filled out.");
                return false;
            }
        }
    </script>
</head>
<body>
    <div style="font-size:18px">What is your first and last name?</div>
    <form name="get" method="get" action="GetData.aspx" onsubmit="return Validate('get')">
        <input id="getFNBox" type="text" name="firstname" placeholder="First Name" />
        <input id="getLNBox" type="text" name="lastname" placeholder="Last Name" />
        <input id="getNameButton" type="submit" value="Submit Name using GET" />
    </form>
    <br />
    <form name="post" method="post" action="PostData.aspx" onsubmit="return Validate('post')">
        <input id="postFNBox" type="text" name="firstname" placeholder="First Name" />
        <input id="postLNBox" type="text" name="lastname" placeholder="Last Name" />
        <input id="postNameButton" type="submit" value="Submit Name using POST" />
    </form>
    <form id="ddlForm" runat="server">
        <input id="btnGetName" type="button" value="Populate Names" onclick="GetData()" />
        <asp:DropDownList ID="ddlNames" runat="server" />
    </form>
</body>
</html>
