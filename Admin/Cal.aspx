<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cal.aspx.cs" Inherits="Cal_Cal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<script src="jquery-1.6.2.min.js"></script>
<script src="jquery-ui-1.8.15.custom.min.js"></script>
    <link href="jqueryCalendar.css" rel="stylesheet" />
    <script>
    jQuery(function () {
        jQuery("#TextBox1").datepicker();
    });
                </script>


</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
