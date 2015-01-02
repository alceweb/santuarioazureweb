<%@ Page Title="Centro di spiritualità" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Centro.aspx.cs" Inherits="Centro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.colorbox.js"></script>
    <link href="Content/colorbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%: Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            //Examples of how to assign the Colorbox event to elements
            $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
        });
		</script>
        <table>
            <tr>
                <td>
                    <a class="group1" runat="server" href="~/Images/c1.jpg"><img class="NewsImg float-right" alt="" src="Images/c1.jpg" /></a>Al Centro di spiritualità si svolgono corsi di esercizi spirituali per i fedeli laici, i sacerdoti, le religiose e i religiosi; 
                    giornate di ritiro e brevi corsi di spiritualità per ammalati; incontri spirituali e formativi per coppie di sposi e gruppi giovanili.
                    E' possibile anche una sosta di preghiera e di silenzio per persone singole (con lettera di presentazione del proprio parroco).
                    Con l'apporto di operatori specialisti, al Santuario si trova un Servizio di consulenza matrimoniale e famigliare in aiuto a coppie di fidanzati, coniugi, nuclei famigliari.
                </td>
            </tr>
            <tr>
                <td>
                    <hr /><h2 >Auditorium</h2>
                        <p>
                            <a id="A1" class="group1 float-right" runat="server" href="~/Images/c2.jpg"><img alt="" class="NewsImg" src="Images/c2.jpg" /></a>
                            400 posti a sedere<br />
                            WiFi ADSL protetta<br />
                            Impianto microfonico con possibilità di registrazione audio 
                        </p>
                </td>
            </tr>
            <tr>
                <td>

                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <hr /><h2 >Camere</h2>
                    <a id="A2" class="group1" runat="server" href="~/Images/c3.jpg"><img class="NewsImg" src="Images/C3.jpg" /></a>
                    <a id="A3" class="group1" runat="server" href="~/Images/c4.jpg"><img class="NewsImg" src="Images/c4.jpg" /></a><br />
                        <h3>50 camere</h3>
                    <p >
                        40&nbsp; singole<br />
                        10 doppie<br />
                        2 camere per diversamente abili<br />
                        <br />
                        <em>Tutte le stanze sono coperte da rete WiFi ADSL protetta</em><br />
                    </p>

                </td>
            </tr>
        </table>
    <table class="tbl1" >
        <tr>
            <td colspan="2">
                <h2>Richiesta informazioni</h2>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="NomeLabel" runat="server" Text="Nome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="NomeTextBox" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="CognomeLabel" runat="server" Text="Cognome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="CognomeTextBox" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="MailLabel" runat="server" Text="Mail"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="MailTextBox" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="TelLabel" runat="server" Text="Telefono"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="TelTextBox" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:label ID="RichiestaLabel" runat="server" Text="Richiesta"/>

            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox Height="500px" ID="RichiestaTtBox1" TextMode="MultiLine" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="InviaButton" OnClick="InviaButton_Click" runat="server" Text="Invia" />
            </td>
            <td>
                <asp:Button ID="Button2" CommandName="Delete" runat="server" Text="Annulla" />
            </td>
        </tr>
    </table>
</asp:Content>

