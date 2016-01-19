<%@ Page Title="Reset password OK" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ResetPswOk.aspx.cs" Inherits="ResetPswOk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%= Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="divRst">
        <h2>La password è stata resettata.</h2>
        <p>Abbiamo inviato una mail all'indirizzo associato all'utente che hai indicato.</p>
        <h3>
            Una volta effettuato l'accesso con la nuova password, ti consigliamo di cambiarla cliccando sul nome utente che apparirà in alto a sinista sopra il menu.
        </h3>
        <p>
            Se per qualsiasi motivo non hai ricevuto la password o non riesci ancora ad accedere al sito, contattaci pure all'indirizzo <a href="mailto:info@santuariodicaravaggio.org">info@santuariodicaravaggio.org</a>
        </p>
    </div>
</asp:Content>

