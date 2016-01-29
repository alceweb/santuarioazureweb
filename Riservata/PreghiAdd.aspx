<%@ Page Title="Scrivi la tua preghiera" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PreghiAdd.aspx.cs" Inherits="Riservata_PreghiAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%: Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="PregAdd">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="FirstItem">
                    <InsertItemTemplate>
                        <table class="tbl3">
                            <tr>
                                <td>
                                <div>
                                    <tr style="color: red">
                                        <td></td>
                                        <td runat="server">
                                            <asp:ValidationSummary ID="ValSum" runat="server"
                                                HeaderText="ATTENZIONE!!!<br/>Tutti i campi sono obbligatori<br/>Devi inserire questi campi:" CssClass="tbl2"></asp:ValidationSummary>

                                        </td>

                                    </tr>

                                </div>

                                </td>
                                <td runat="server" style="">Nome:
                                </td>
                                <td>
                                    <asp:TextBox CssClass="textboxPre" ID="NomeTextBox" placeholder="il tuo nome" runat="server" Text='<%# Bind("Nome") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Città:
                                </td>
                                <td>
                                    <asp:TextBox CssClass="textboxPre" ID="CittaTextBox" runat="server" placeholder="la città dove ti trovi" Text='<%# Bind("Citta") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: top">
                                    <img src="../Images/Madonna.png" />
                                </td>
                                <td>
                                    <asp:TextBox ID="PreghieraTextBox" CssClass="textboxPre" TextMode="MultiLine" placeholder="scrivi qui la tua preghiera" Width="300px" Height="300px" Text='<%# Bind("Preghiera") %>' runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="InsertButton" CssClass="btn_ok" runat="server" OnClick="InsertButton_Click" CommandName="Insert" Text="Invia la preghiera" />
                                    <asp:Button ID="CancelButton" PostBackUrl="~/Preghiere/Elenco.aspx" CausesValidation="False" CssClass="btn_ko" runat="server" CommandName="Cancel" Text="Annulla"/>

                                </td>
                            </tr>
                        </table>
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
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT * FROM [FedPreg]"></asp:SqlDataSource>
    </div>
</asp:Content>

