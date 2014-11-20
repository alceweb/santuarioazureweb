<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<link href="Content/calendar-blue.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:TextBox ID="TextBox1" runat="server" ReadOnly = "true"></asp:TextBox>
<img src="Images/calender.png" /><br /><br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<img src="Images/calender.png" /><br /><br />
<asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" />
<script src="Admin/Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Admin/Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Admin/Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Content/calendar-blue.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%= TextBox1.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%d/%m/%Y %H:%M",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
    $(document).ready(function () {
        $("#<%=TextBox2.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%d/%m/%Y %H:%M",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>

</asp:Content>

