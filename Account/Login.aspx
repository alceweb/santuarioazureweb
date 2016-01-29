<%@ Page Title="Login utenti registrati" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <table class="tbl3">
        <tr>
            <td>
                <section id="loginForm">
                    <h3>Accedi all'area riservata</h3><hr />
                    <asp:Login runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
                        <LayoutTemplate>
                            <p class="validation-summary-errors">
                                <asp:Literal runat="server" ID="FailureText" />
                            </p>
                            <fieldset>
                                <legend>Form di accesso</legend>
                                <ol>
                                    <li>
                                        <asp:Label runat="server" AssociatedControlID="UserName">Nome utente</asp:Label>
                                        <asp:TextBox runat="server" ID="UserName" /><br />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="Il campo Nome utente è obbligatorio." />
                                    </li>
                                    <li>
                                        <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                                        <asp:TextBox runat="server" ID="Password" TextMode="Password" /><br />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="Il campo Password è obbligatorio." />
                                    </li>
                                    <li>
                                        <asp:CheckBox runat="server" ID="RememberMe" />
                                        <asp:Label runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Memorizza account</asp:Label>
                                    </li>
                                </ol>
                                <asp:Button CssClass="btn_ok" runat="server" CommandName="Login" Text="Accedi" />
                            </fieldset>
                        </LayoutTemplate>
                    </asp:Login>
                    <p>
                        <asp:HyperLink ID="PasswordResetLink" ForeColor="red" runat="server" NavigateUrl="~/ResetPsw.aspx">Password dimenticata!</asp:HyperLink>
                    </p>

                </section>

            </td>
            <td>
                <h3>Se non sei ancora iscritto?</h3><hr />
                <asp:HyperLink ForeColor="green" runat="server" ID="RegisterHyperLink">Iscriviti adesso</asp:HyperLink>


            </td>
        </tr>
    </table>

    <section id="socialLoginForm">
<%--        <h2>Utilizzare un altro servizio per eseguire l'accesso.</h2>
        <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />--%>
    </section>
</asp:Content>