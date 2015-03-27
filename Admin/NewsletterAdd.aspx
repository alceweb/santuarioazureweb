<%@ Page Title="Inserimento newsletter" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewsletterAdd.aspx.cs" Inherits="Admin_NewsletterAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
<div ><p></p>
       <CKEditor:CKEditorControl ID="NLEditor" BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl><hr />
            <asp:Button ID="InviaButton" ForeColor="White" BackColor="green" OnClick="InviaButton_Click" runat="server" Text="Invia" />
        <asp:Button ID="Button2" ForeColor="White" BackColor="red" CommandName="Cancel" runat="server" Text="Annulla" />
</div>
</asp:Content>

