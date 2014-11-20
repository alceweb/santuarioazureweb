<%@ Page Title="Le preghiere a Maria" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PreghieraOk.aspx.cs" Inherits="Preghiere_PreghieraOk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <h2><%: Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="tbl3">
        <h2>la tua preghiera è stata inviata corretamente</h2>
        <img style="border: none; float:left; display:block; box-shadow: none" src="<%: ResolveUrl("~/Images/Madonna.png")%>" />

        <h4 >
            Il testo sarà controllato dall'addetto del Santuario che la pubblicherà al più presto.
        </h4>
        <p>
            <a href="Elenco.aspx">Torna all'elenco</a>
        </p>
    </div>
</asp:Content>

