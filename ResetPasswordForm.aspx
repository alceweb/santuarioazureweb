<%@ Page Title="Reset Password" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ResetPasswordForm.aspx.cs" Inherits="ResetPasswordForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
<h2><%: Page.Title %></h2><hr />
    <table class="tbl3" >
        <tr>
            <td colspan="2">
                <h2>Richiesta reset password</h2>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="NomeLabel" runat="server" Text="Nome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="NomeTextBox" required="required" placeholder="il tuo nome" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="CognomeLabel" runat="server" Text="Cognome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="CognomeTextBox" required="required" placeholder="il tuo cognome" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="MailLabel" runat="server" Text="La mail alla quale inviare la nuova password"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="MailTextBox" required="required" placehoder="la tua mail" Type="email" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="UserLabel" runat="server" Text="Nome utente o mail con la quale ti sei registrato"></asp:Label><br />

            </td>
            <td>
                <asp:TextBox ID="UserTextBox" required="required" placeholder="utente o mail" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td colspan="2"><hr />
                <asp:Button ID="InviaButton" CssClass="btn_ok" OnClick="InviaButton_Click" runat="server" Text="Invia" />
            
                <asp:Button ID="Button2" CssClass="btn_ko" PostBackUrl="~/Account/Login.aspx" CausesValidation="false" runat="server" Text="Annulla" UseSubmitBehavior="False" />
            </td>
        </tr>
    </table>
</asp:Content>

