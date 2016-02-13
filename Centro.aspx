<%@ Page Title="Centro di spiritualità" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Centro.aspx.cs" Inherits="Centro" %>
<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.colorbox.js"></script>
    <link href="Content/colorbox.css" rel="stylesheet" />
    <script src='https://www.google.com/recaptcha/api.js'></script>
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
    <table class="tbl3" >
        <tr>
            <td colspan="2">
                <h2>Richiesta informazioni</h2>
            </td>
            <td rowspan="6">
                <div >
                    <p>
                        <a class="group1 float-left" runat="server" href="~/Images/c1.jpg">
                            <img class="NewsImg float-left" alt="" src="Images/c1.jpg" /></a>Al Centro di spiritualità si svolgono corsi di esercizi spirituali per i fedeli laici, i sacerdoti, le religiose e i religiosi; 
                    giornate di ritiro e brevi corsi di spiritualità per ammalati; incontri spirituali e formativi per coppie di sposi e gruppi giovanili.
                    E' possibile anche una sosta di preghiera e di silenzio per persone singole (con lettera di presentazione del proprio parroco).
                    Con l'apporto di operatori specialisti, al Santuario si trova un Servizio di consulenza matrimoniale e famigliare in aiuto a coppie di fidanzati, coniugi, nuclei famigliari.

                    </p>

                </div>
                <div >
                    <hr />
                    <div class="float-left">
                        <a id="A1" class="group1" runat="server" href="~/Images/c2.jpg">
                            <img alt="" class="NewsImg float-left" src="Images/c2.jpg" /></a>
                    </div>
                        <h2 style="text-align:center">Auditorium</h2>
                    <p style="text-align:center">
                        400 posti a sedere<br />
                        WiFi ADSL protetta<br /><br />
                        <em>Impianto microfonico con possibilità di registrazione audio</em> 

                    </p>

                </div>
                <div >
                    <hr />
                    <div class="float-left">
                    <a id="A2" class="group1" runat="server" href="~/Images/c3.jpg">
                        <img class="NewsImg float-left" src="Images/C3.jpg" /></a><br /><br />
                    <a id="A3" class="group1" runat="server" href="~/Images/c4.jpg">
                        <img class="NewsImg float-left" src="Images/c4.jpg" /></a><br />

                    </div>
                    <h2 style="text-align:center">Camere</h2>
                    <h3 style="text-align:center">50 camere</h3>
                    <p style="text-align:center">
                        40&nbsp; singole<br />
                        10 doppie<br />
                        2 camere per diversamente abili<br />
                        <br />
                        <em>Tutte le stanze sono coperte da rete WiFi ADSL protetta</em><br />
                    </p>

                </div>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="NomeLabel" runat="server" Text="Nome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="NomeTextBox" Width="230px" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="CognomeLabel" runat="server" Text="Cognome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="CognomeTextBox" Width="230px" required="required" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="MailLabel" runat="server" Text="Mail"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="MailTextBox" Width="230px" required="required" type="Email" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="TelLabel" runat="server" Text="Telefono"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="TelTextBox" Width="230px" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox Height="500px" ID="RichiestaTtBox1" required="required" Width="360px" TextMode="MultiLine" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
               <h3><asp:Label ID="lblMessage" ForeColor="red" runat="server" Text=""></asp:Label></h3>
              <cc1:Recaptcha ID="Recaptcha1"  runat="server" />

            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
                <asp:Button ID="InviaButton" ForeColor="White" BackColor="green" OnClick="InviaButton_Click" runat="server" Text="Invia" />
                <asp:Button ID="Button2" ForeColor="White" BackColor="Red" CommandName="Delete" runat="server" Text="Annulla" />
            </td>
        </tr>
    </table>
</asp:Content>

