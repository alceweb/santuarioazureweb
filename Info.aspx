<%@ Page Title="Informazioni e orari" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Info.aspx.cs" Inherits="Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-family: "Segoe UI";
            text-transform: uppercase;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
   <h2><%= Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
        <table >
            <tr>
                <td>
                    <p>
                        <strong>Santuario Santa Maria del Fonte<br />
                        Viale Papa Giovanni XXIII
                        <br />
                        24043 Caravaggio (Bg)
                        <br />
                        C.F. 84001970163</strong></p>
                </td>
                <td >Direzione Pastorale e
                    <br />
                    Segreteria Pellegrinaggi<br />
                    <br />
                    Tel.&nbsp;&nbsp; 0363 3571
                    <br />
                    Fax&nbsp;&nbsp;&nbsp;0363 357203</td>
                <td style="vertical-align:top">E-mail: <a href="mailto:info@santuariodicaravaggio.org">info@santuariodicaravaggio.org </a></td>
                <td >&nbsp;</td>
            </tr>
        </table><hr />
    <h3>Orari S. Messe e benedizioni</h3>
    <table class="tbl1" >
        <tr>
            <th colspan=3>
                Orario feriale
            </th>
        </tr>
        <tr>
            <td rowspan="2">

                SS. Messe</td>
            <td>

                Mattino</td>
            <td>

                ore 07.30<br />
                ore 08.30<br />
                ore 10.00</td>
        </tr>
        <tr>
            <td>

                Pomeriggio</td>
            <td>

                ore 16.00 (al sabato è festivo)</td>
        </tr>
        <tr>
            <td>

                S. Rosario</td>
            <td>

                &nbsp;</td>
            <td>

                invernale: ore 15.30<br />
                estivo: segue la messa delle ore 16.00</td>
        </tr>
        <tr>
            <td rowspan="2">

                Adorazione eucaraistica</td>
            <td>

                Mattino</td>
            <td>

                Dalle 10.30 alle 12.00</td>
        </tr>
        <tr>
            <td>

                Pomeriggio</td>
            <td>

                dalle ore 14.00 alle ore 15.45</td>
        </tr>
    </table>


        <br />
    <table class="tbl1" >
        <tr>
            <th colspan="3">
                Celebrazioni proprie del Santuario

            </th>
        </tr>
        <tr>
            <td>Venerdì</td>
            <td>ore 16.00 Atto penitenziale (al Fonte) a Messa</td>
        </tr>
        <tr>
            <td>S. Rosario</td>
            <td>Dopo la Messa delle ore 16:00 Lodi alla Vergine (allo Speco)</td>
        </tr>
        </table>

        <br />
    <table class="tbl1" >
         <tr>
            <th colspan="3">
                Orario festivo
            </th>
        </tr>
        <tr>
            <td rowspan="2">

                SS. Messe</td>
            <td>

                Mattino</td>
            <td>

                ore 07.00<br />
                ore 08.30<br />
                ore 10.00<br />
                ore 11.00</td>
        </tr>
        <tr>
            <td>

                Pomeriggio</td>
            <td>

                ore 16.00<br />
                ore 17.30</td>
        </tr>
        <tr>
            <td>

                S. Rosario</td>
            <td>

                Pomeriggio</td>
            <td>

                ore 15.15</td>
        </tr>
        </table>

        <br />
    <table class="tbl1" >
         <tr>
            <th colspan="3">
                Benedizioni

            </th>
        </tr>
        <tr>
            <td rowspan="2">

                <span class="auto-style2">delle persone</span><br />
                (al fonte, ogni sabato e<br />
&nbsp;domenica, ogni giorno
                <br />
                prefestivo e festivo)</td>
            <td>

                Sabato</td>
            <td>

                ore 15.45</td>
        </tr>
        <tr>
            <td>

                Domenica</td>
            <td>

                ore 9.45 - 11.15&nbsp;<br />
                ore 15.00 - 15.45 - 17.15</td>
        </tr>
        <tr>
            <td>

                S. Rosario</td>
            <td>

                &nbsp;</td>
            <td>

                invernale: ore 15.30<br />
                estivo: segue la messa delle ore 16.00</td>
        </tr>
        <tr>
            <td rowspan="2">

                <span class="auto-style2">degli autoveicoli</span><br />
                (nel piazzale riservato, ogni
                <br />
                sabato e domenica, ogni giorno
                <br />
                prefestivo e festivo)&nbsp;</td>
            <td>

                Sabato</td>
            <td>

                ore 15.30</td>
        </tr>
        <tr>
            <td>

                Domenica</td>
            <td>

                ore 9.30 -&nbsp;11.00<br />
                ore 14.45 - 15.30 - 17.00</td>
        </tr>
    </table>


        <br />
        <br />


</asp:Content>

