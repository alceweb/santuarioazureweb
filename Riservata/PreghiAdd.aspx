<%@ Page Title="Scrivi la tua preghiera" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PreghiAdd.aspx.cs" Inherits="Riservata_PreghiAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%: Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="FirstItem">
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="color:red">
                <td></td>
            <td runat="server">
                        <asp:ValidationSummary ID="ValSum" runat="server"
                            HeaderText="ATTENZIONE!!!<br/>Tutti i campi sono obbligatori<br/>Devi inserire questi campi:" CssClass="tbl2"></asp:ValidationSummary>

            </td>

            </tr>

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
                        <CKEditor:CKEditorControl ID="PreghieraTextBox" Text='<%# Bind("Preghiera") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR" CustomConfig="config1.js"></CKEditor:CKEditorControl>
                    </td>
                </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="InsertButton" ForeColor="Green" runat="server" CommandName="Insert" Text="Invia la preghiera" />
                    <asp:Button ID="CancelButton" ForeColor="Red" runat="server" CommandName="Cancel" Text="Cancella" CausesValidation="False" />

                </td>
            </tr>
            </td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNome" runat="server"
        ControlToValidate="NomeTextBox"
        ErrorMessage="Nome!"
        Display="None"
        Width="10px"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCittà" runat="server"
        ControlToValidate="CittaTextBox"
        ErrorMessage="Città!"
        Display="None"
        Width="10px"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPreghiera" runat="server"
        ControlToValidate="PreghieraTextBox"
        ErrorMessage="Preghiera!"
        Display="None"
        Width="10px"/>
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
        InsertCommand="INSERT INTO [FedPreg] ([Nome], [Citta], [Preghiera], [Data], [Utente]) VALUES (@Nome, @Citta, @Preghiera, @Data, @Utente)" 
        SelectCommand="SELECT * FROM [FedPreg]" 
        UpdateCommand="UPDATE [FedPreg] SET [Nome] = @Nome, [Citta] = @Citta, [Preghiera] = @Preghiera, [Data] = @Data, [Utente] = @Utente WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Citta" Type="String" />
            <asp:Parameter Name="Preghiera" Type="String" />
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Utente" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Citta" Type="String" />
            <asp:Parameter Name="Preghiera" Type="String" />
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Utente" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <%-- Lista preghiere ultima settimana --%>
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="Id">
        <AlternatingItemTemplate>
            <tr style="background-color:rgba(171, 153, 142, 0.43)"  >
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0: dddd dd-MM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                </td>
                <td>
                    da <asp:Label ID="CittaLabel" runat="server" Text='<%# Eval("Citta") %>' />
                </td>
                <td>
                    <asp:Label ID="PreghieraLabel" runat="server" Text='<%# Eval("Preghiera") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Nessuna preghiera inserita oggi.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <ItemTemplate>
            <tr >
                <td >
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0: dddd dd-MM-yy}") %>' />
                </td>
                <td >
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                </td>
                <td >
                    da <asp:Label ID="CittaLabel" runat="server" Text='<%# Eval("Citta") %>' />
                </td>
                <td >
                    <asp:Label ID="PreghieraLabel" runat="server" Text='<%# Eval("Preghiera") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table class="tbl3" runat="server">
                <tr runat="server">
                    <td runat="server"><hr /><h3 style="text-align:center">Preghiere dell'ultima settimana</h3><hr />
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" >
                            </tr>
                            <tr style="" id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [FedPreg] WHERE [Data] > {fn NOW()}-7 AND [Pubblica] = 1 ORDER BY [Data] desc ">
    </asp:SqlDataSource>
</asp:Content>

