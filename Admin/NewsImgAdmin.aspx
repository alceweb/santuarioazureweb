<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewsImgAdmin.aspx.cs" Inherits="Admin_NewsImgAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="">Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Data:
            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
            <br />
            Titolo:
            <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
            <br />
            DescrizioneBreve:
            <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
            <br />
            Descrizione:
            <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
            <br />
            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" Text="Pubblica" />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Data:
            <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
            <br />
            Titolo:
            <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
            <br />
            DescrizioneBreve:
            <asp:TextBox ID="DescrizioneBreveTextBox" runat="server" Text='<%# Bind("DescrizioneBreve") %>' />
            <br />
            Descrizione:
            <asp:TextBox ID="DescrizioneTextBox" runat="server" Text='<%# Bind("Descrizione") %>' />
            <br />
            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' Text="Pubblica" />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>Non è stato restituito alcun dato.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Data:
            <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
            <br />Titolo:
            <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
            <br />DescrizioneBreve:
            <asp:TextBox ID="DescrizioneBreveTextBox" runat="server" Text='<%# Bind("DescrizioneBreve") %>' />
            <br />Descrizione:
            <asp:TextBox ID="DescrizioneTextBox" runat="server" Text='<%# Bind("Descrizione") %>' />
            <br />
            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' Text="Pubblica" />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Data:
            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
            <br />
            Titolo:
            <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
            <br />
            DescrizioneBreve:
            <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
            <br />
            Descrizione:
            <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
            <br />
            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" Text="Pubblica" />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Data:
            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
            <br />
            Titolo:
            <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
            <br />
            DescrizioneBreve:
            <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
            <br />
            Descrizione:
            <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
            <br />
            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" Text="Pubblica" />
            <br />
<br /></span>
        </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [News] WHERE ([Id] = @Id)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Id" QueryStringField="ID" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

