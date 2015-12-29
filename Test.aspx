<%@ Page Title="Test" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%: Title %></h2><hr />
        <asp:Panel ID="PnlCookie" runat="server">
            <div class="divCook">
               <span>
                Questo sito utilizza cookie.
                Se accedi a un qualunque elemento del sito acconsenti all'uso del cookie.
               </span>
                   <hr />
                 <div style="text-align:center">
                <a href="CookiesInfo.aspx" runat="server" id="Cookies">Approfondisci</a>
                <asp:LinkButton ID="CookieButton"  runat="server" OnClick="CookieButton_Click" Text="Acconsenti" Height="25px" Font-Size="Small"></asp:LinkButton>
                 </div>
            </div>

        </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDSStaPage" runat="server"></asp:SqlDataSource>
    <div class="div1">

    <h2>Pagina di test cookieTest</h2>
    <p>
        Ciao Giovanni<br />
        Questa è la pagina di test per il plug-in della legge sulla gestione dei cookies
    </p>
    <p>Ho cercato di farla il meno invasiva possibile.<br />
        Questo rettangolo che è appena passato dal video resterà attivo ogni volta che si entra nel sito fino a che l'utente non cliccherà sul pulsante <strong><em>Acconsenti</em></strong> dopo di che si riattiverà dopo 180 giorni in attesa di un altro click.<br />
        Naturalmente per permetterti di visualizzare più volte l'animazione in questa pagina test il plug-in non viene mai disattivato.<br />
        Dagli un'occhiata, se va bene la pubblico sul sito ufficiale.
    </p>
    <p>
        Ciao!!!!
    </p>
     </div>
    </asp:Content>
