<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Cale.aspx.cs" Inherits="Admin_Cale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="jquery-1.6.2.min.js"></script>
<script src="jquery-ui-1.8.15.custom.min.js"></script>
    <link href="jqueryCalendar.css" rel="stylesheet" />
    <script>
        jQuery(function () {
            jQuery("#TextBox1").datepicker();
        });
                </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

</asp:Content>

