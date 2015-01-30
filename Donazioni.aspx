<%@ Page Title="Aiuta il santuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Donazioni.aspx.cs" Inherits="Donazioni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%= Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
<table class="tbl2" >
    <tr>
        <td>
            <h2>Sostieni in tuo santuario</h2>
                <p>
                    Grazie di cuore  a chi mette a disposizione tempo ed energie per il buon funzionamento delle strutture del nostro Santuario.
                </p>
                <p>
                    Grazie a chi sostiene pure economicamente le attività del Santuario. Si può contribuire alle opere del Santuario:
                </p>
    <div>
                <ol>
                    <li>con <strong><em>offerte dirette</em></strong>, depositate nelle cassette della basilica o consegnate in cancelleria</li>
                    <li>con<strong><em> bonifico bancario </em></strong>su c/c n° 12/12; codice iban IT95L0844152770000000000012; Banca di Credito Cooperativo di Caravaggio, via B. da Caravaggio, Caravaggio (Bg)</li>
                    <li>con <strong><em>versamento</em></strong> su c/c postale n° 16514242 intestato a Santuario di Caravaggio, 24043 Caravaggio (Bg)</li>
                    <li>con <strong><em>lasciti ed eredità</em></strong> secondo precise formule che possono essere suggerite dalla Direzione pastorale del Santuario</li>
                    <li>con il <strong><em>dono di arredi</em></strong> (paramenti, biancheria..) necessari alle celebrazioni liturgiche. Per tale tipo di aiuto, però, è bene contattare in precedenza la Direzione del Santuario. </li>
                    <li>attraverso il sito <strong>"Lumen"</strong> che trovi qui sotto</li>
                    <%--<li>Se possiedi un account PayPal puoi fare direttamente dal sito la tua offerta</li>--%>
                </ol><hr />

    </div>
            <iframe src="https://www.donatelumen.org/caravaggio_main_altar_it/" style="border-style: none; margin: 0px; width: 100%; height:630px" seamless="seamless"></iframe>
        </td>
    </tr>

</table>

<%--                <p>
                    Per fare la donazione o l'offerta Messa con PayPal devi essere registrato. La registrazione richiede un nome utente e una mail valida. I dati inseriti nella registrazione non saranno ceduti a terzi e saranno utilizzati solo del personale del Santuario addetto alla manutenzione del sito<br />
                    Se sei già registrato vai direttamente alla sezione PayPal altrimenti registrati <a class="linka" href="Account/Register.aspx">qui!</a>
                </p>
                <h2><a href="Riservata/Paypal.aspx">Effettua la donazione o l'offerta messa con PayPal</a></h2>--%>
</asp:Content>

