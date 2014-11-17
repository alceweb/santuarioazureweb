<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewsAdd.aspx.cs" Inherits="Admin_NewsAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="jquery-1.6.2.min.js"></script>
<script src="jquery-ui-1.8.15.custom.min.js"></script>
    <link href="jqueryCalendar.css" rel="stylesheet" />
    <script>
        jQuery(function () {
            jQuery("#TextBoxData").datepicker();
        });
                </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <h3>Inserimento news</h3>

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <InsertItemTemplate>
            <span >
                <div style="width: 100%">
                    <div style="float: left; height:160px">
                        <asp:Label ID="LabelData" runat="server" Text="Data"></asp:Label><br />
                        <asp:TextBox ID="TextBoxData" Width="200px" runat="server" Text='<%# Bind("Data") %>'></asp:TextBox>
                    </div>
                    <asp:Label ID="TitoloLabel" Width="130px" runat="server" Text="Titolo"></asp:Label><br />
                    <span style="padding-left: 20px">
                        <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' /></span><br />
                    <asp:Label ID="DescrizioneBreveLabel" Width="130px" runat="server" Text="Descrizione breve"></asp:Label><br />
                    <span style="padding-left: 20px">
                        <asp:TextBox ID="DescrizioneBreveTextBox" runat="server" Text='<%# Bind("DescrizioneBreve") %>' /></style="padding-left:20px">
                        <br />
                        Pubblica
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                </div>
                    <br />
            <asp:Label ID="DescrizioneLabel" Width="130px" runat="server" Text="Testo news"></asp:Label>
            <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
            <hr />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
            <br /><br />

            </span>

        </InsertItemTemplate>
        <ItemTemplate>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id" InsertCommand="INSERT INTO [News] ([Data], [Titolo], [DescrizioneBreve], [Descrizione], [Pubblica]) VALUES (@Data, @Titolo, @DescrizioneBreve, @Descrizione, @Pubblica)" SelectCommand="SELECT * FROM [News]" UpdateCommand="UPDATE [News] SET [Data] = @Data, [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Pubblica] = @Pubblica WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="DescrizioneBreve" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="DescrizioneBreve" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

</asp:Content>

