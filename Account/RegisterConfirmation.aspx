<%@ Page Title="Registrazione OK" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RegisterConfirmation.aspx.cs" Inherits="Account_RegisterConfirmation" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 ><%: Title %></h2><hr />
    <table class="tbl2">
        <tr>
            <td>

        <h2>Benvenuto <%: User.Identity.Name %>!</h2>
        <p>
            Sei registrato al sito del <strong>Santuario Santa Maria del Fonte di Caravaggio</strong>.
        </p> 
                <p>
                    La mail che hai inserito nella form di registrazione varrà utilizzata secondo quanto specificato nel documento della privacy per comunicazioni relative al sito www.santuariodicaravaggio.it
                </p>
                <p>
                    Puoi cambiare la tua password in qualsiasi momento cliccando sul nome utente che appare in alto a destra una volta effettato il login
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <img src="../Images/newsletter.png" />
                <h3 style="text-align:center">Se vuoi puoi iscriverti alla newsletter del venerdì compilando il form qui sotto.</h3>
                <h3></h3>
                <div style="margin:auto; display:table">
                    <iframe src="../IscrizioneNL2.aspx" style="height:600px; width:600px; margin:auto; background-color:#fff; border-radius:15px; border-style:none; position:relative"></iframe>
                </div>
            </td>
        </tr>
    </table>
<div style="width:800px; margin:auto">
</div>

</asp:Content>

