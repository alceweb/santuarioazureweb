<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Info.aspx.cs" Inherits="Admin_Info" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DefaultMode="Edit" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Orari:
                <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Orari") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aggiorna" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Id:
            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
            <br />
            Orari:
                                <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Orari") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserisci" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Orari:
            <asp:Label ID="OrariLabel" runat="server" Text='<%# Bind("Orari") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Modifica" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Elimina" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuovo" />
        </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Orari] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Orari] ([Id], [Orari]) VALUES (@Id, @Orari)" SelectCommand="SELECT * FROM [Orari]" UpdateCommand="UPDATE [Orari] SET [Orari] = @Orari WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id" Type="Int32" />
        <asp:Parameter Name="Orari" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Orari" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

