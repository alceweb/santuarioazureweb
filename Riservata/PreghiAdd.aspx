<%@ Page Title="Scrivi la tua preghiera" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PreghiAdd.aspx.cs" Inherits="Riservata_PreghiAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%: Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        zdfadvadfb
        </div>
    <div>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="FirstItem">
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>Non è stato restituito alcun dato.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <div>
                            <tr style="color: red">
                                <td></td>
                                <td runat="server">
                                    <asp:ValidationSummary ID="ValSum" runat="server"
                                        HeaderText="ATTENZIONE!!!<br/>Tutti i campi sono obbligatori<br/>Devi inserire questi campi:" CssClass="tbl2"></asp:ValidationSummary>

                                </td>

                            </tr>

                        </div>

                        <td runat="server" style="">Nome:
                        </td>
                        <td>
                            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                        </td>
                        <tr>
                            <td>Città:
                            </td>
                            <td>
                                <asp:TextBox ID="CittaTextBox" runat="server" Text='<%# Bind("Citta") %>' />
                            </td>
                            <tr>
                                <td style="vertical-align: top">Preghiera:
                                </td>
                                <td>
                                    <asp:TextBox ID="PreghieraTextBox" TextMode="MultiLine" Width="300px" Height="300px" Text='<%# Bind("Preghiera") %>' runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="InsertButton" ForeColor="Green" runat="server" OnClick="InsertButton_Click" CommandName="Insert" Text="Invia la preghiera" />
                                <asp:Button ID="CancelButton" ForeColor="Red" runat="server" CommandName="Cancel" Text="Cancella" CausesValidation="False" />

                            </td>
                        </tr>
                        </td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNome" runat="server"
                                ControlToValidate="NomeTextBox"
                                ErrorMessage="Nome!"
                                Display="None"
                                Width="10px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCittà" runat="server"
                            ControlToValidate="CittaTextBox"
                            ErrorMessage="Città!"
                            Display="None"
                            Width="10px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPreghiera" runat="server"
                            ControlToValidate="PreghieraTextBox"
                            ErrorMessage="Preghiera!"
                            Display="None"
                            Width="10px" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <td runat="server" style=""></td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT * FROM [FedPreg]"></asp:SqlDataSource>
    </div>
</asp:Content>

