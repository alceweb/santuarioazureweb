<%@ Page Title="Offerte per candele e Messe" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Lumen.aspx.cs" Inherits="Lumen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%= Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
<iframe src="https://www.donatelumen.org/caravaggio_main_altar_it/" style="width: 720px; height:570px" sandbox="allow-top-navigation"></iframe>
</asp:Content>

