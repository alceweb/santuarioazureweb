<%@ Page Title="Richiesta informazioni" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FormResponse.aspx.cs" Inherits="FormResponse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
<h2><%: Title %></h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <hr />
<h3>La tua richiesta di informazioni è stata inviata al personale addetto.<br />
    Verrai contattato alla mail o al telefono che hai indicato nella form di richiesta.
</h3><hr />

</asp:Content>

