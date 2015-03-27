<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2>Inserimento newsletter</h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="div1" style="margin:auto">
       <CKEditor:CKEditorControl ID="NLEditor" BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl><hr />
            <asp:Button ID="InviaButton" ForeColor="White" BackColor="green" OnClick="InviaButton_Click" runat="server" Text="Invia" />
        <asp:Button ID="Button2" ForeColor="White" BackColor="red" CommandName="Cancel" runat="server" Text="Annulla" />
</div>
    <table style="border: thin solid #000000">
        <tr>
            <td>
                Uno
            </td>
            <td>
                Due
            </td>
        </tr>
    </table>
</asp:Content>
