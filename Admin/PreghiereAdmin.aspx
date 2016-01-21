<%@ Page Title="Gestione preghiere" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="PreghiereAdmin.aspx.cs" Inherits="Admin_PreghiereAdmin" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="m1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:LinkButton CssClass="link3" ID="EditButton" runat="server" CommandName="Edit" > 
                <asp:Label ID="UtenteLabel" runat="server" Font-Italic="true" Font-Bold="true" Text='<%# Eval("Utente") + " - " %>'></asp:Label>
            <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
            <asp:Label ID="CittaLabel" runat="server" Text='<%# "<em> da </em>" + Eval("Citta") %>' />
             - 
            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd-MM-yy}") %>' />
             - <em>Pubblica</em>  <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />

            </asp:LinkButton><span style="float:right"><asp:LinkButton ID="DeleteButton" ForeColor="Red" Font-Bold="true" OnClientClick='return confirm("Stai cancellando definitivamente record")' runat="server" CommandName="Delete" Text="Elimina" />
            </span>
            <hr /></span>
        </ItemTemplate>
        <EditItemTemplate>
            <table class="tbl3">
                <th colspan="2" >
                <asp:Label ID="UtenteLabel" runat="server" Font-Italic="true" Font-Bold="true" Text='<%# Eval("Utente") + " - " %>'></asp:Label>
            <asp:Label ID="NomeLabel" Font-Bold="true" runat="server" Text='<%# Eval("Nome") %>' />
            da <asp:Label ID="CittaLabel" runat="server" Text='<%# Eval("Citta") %>' />
            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd MMM yyyy}") %>' /><hr />
                </th>
                <tr>
                    <td>Nome: </td><td>
                        <asp:TextBox ID="NomeTextBox" Width="200px" runat="server" Text='<%# Bind("Nome") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Citta: </td><td>
                        <asp:TextBox ID="CittaTextBox" runat="server" Text='<%# Bind("Citta") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Data: </td><td>
                        <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Pubblica </td><td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan=2>
                    <CKEditor:CKEditorControl ID="PreghieraTextBox" Text='<%# Bind("Preghiera") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR" CustomConfig="config1.js"></CKEditor:CKEditorControl></td></tr><tr>
                    <td >
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />

                    </td>
                </tr>
            </table><hr />
             </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span></span>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <h2>Da pubblicare</h2><hr />
                <span runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        DeleteCommand="DELETE FROM [FedPreg] WHERE [Id] = @Id" 
        SelectCommand="SELECT * FROM [FedPreg] Where [Pubblica] = 0 ORDER BY [Pubblica], [Data]" 
        UpdateCommand="UPDATE [FedPreg] SET [Nome] = @Nome, [Citta] = @Citta, [Preghiera] = @Preghiera, [Data] = @Data, [Pubblica] = @Pubblica WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Citta" Type="String" />
            <asp:Parameter Name="Preghiera" Type="String" />
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h2>Pubblicate</h2>
    <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <asp:LinkButton CssClass="link3" ID="EditButton" runat="server" CommandName="Edit" > 
                <asp:Label ID="UtenteLabel" runat="server" Font-Italic="true" Font-Bold="true" Text='<%# Eval("Utente") + " - " %>'></asp:Label>
            <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
             <em>da</em> 
            <asp:Label ID="CittaLabel" runat="server" Text='<%# Eval("Citta") %>' />
             - 
            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd-MM-yy}") %>' />
             - <em>Pubblica</em>  <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />

            </asp:LinkButton><span style="float:right"><asp:LinkButton ID="DeleteButton" ForeColor="Red" Font-Bold="true" OnClientClick='return confirm("Stai cancellando definitivamente record")' runat="server" CommandName="Delete" Text="Elimina" />
            </span>
            <hr /></span>
        </ItemTemplate>
        <EditItemTemplate>
            <table class="tbl3">
                <th >
            <asp:Label ID="NomeLabel" Font-Bold="true" runat="server" Text='<%# Eval("Nome") %>' />
             da <asp:Label ID="CittaLabel" runat="server" Text='<%# Eval("Citta") %>' />
             - <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd-MM-yy}") %>' />
             - Pubblica <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                </th>
                <tr>
                    <td>Nome: </td><td>
                        <asp:TextBox ID="NomeTextBox" Width="200px" runat="server" Text='<%# Bind("Nome") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Citta: </td><td>
                        <asp:TextBox ID="CittaTextBox" runat="server" Text='<%# Bind("Citta") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Data: </td><td>
                        <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Pubblica </td><td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan=2>
                    <CKEditor:CKEditorControl ID="PreghieraTextBox" Text='<%# Bind("Preghiera") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR" CustomConfig="config1.js"></CKEditor:CKEditorControl></td></tr><tr>
                    <td >
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />

                    </td>
                </tr>
            </table><hr />
             </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>Non è stato restituito alcun dato.</span>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style=""><hr /><span runat="server" id="itemPlaceholder" /></div>
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="<<" LastPageText="Ultimo" NextPageText=">>" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="<<" LastPageText=">>" />
                    </Fields>
                </asp:DataPager>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        DeleteCommand="DELETE FROM [FedPreg] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [FedPreg] ([Nome], [Citta], [Preghiera], [Data], [Utente], [Pubblica]) VALUES (@Nome, @Citta, @Preghiera, @Data, @Utente, @Pubblica)" 
        SelectCommand="SELECT * FROM [FedPreg] where [Pubblica]=1 ORDER BY [Pubblica], [Data] Desc" 
        UpdateCommand="UPDATE [FedPreg] SET [Nome] = @Nome, [Citta] = @Citta, [Preghiera] = @Preghiera, [Data] = @Data, [Pubblica] = @Pubblica WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Citta" Type="String" />
            <asp:Parameter Name="Preghiera" Type="String" />
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Utente" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Citta" Type="String" />
            <asp:Parameter Name="Preghiera" Type="String" />
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
