<%@ Page Title="Gestione newsletter" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewsletterAdmin.aspx.cs" Inherits="Admin_NewsletterAdmin" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:LinkButton ID="EditButton" Font-Bold="true"  ForeColor="green" runat="server" CommandName="Edit">Modifica</asp:LinkButton>
            <asp:LinkButton CssClass="link3" ID="SelectButton" runat="server" CommandName="Select" > 
                        <asp:Label ID="Label1" runat="server" Font-Bold="true" Text='<%# Eval("Data", "{0:dd MMM yyyy}") %>'></asp:Label> - 
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Titolo") %>'></asp:Label>
            </asp:LinkButton><span style="float:right"><asp:LinkButton ID="DeleteButton" ForeColor="Red" Font-Bold="true" OnClientClick='return confirm("Stai cancellando definitivamente record")' runat="server" CommandName="Delete" Text="Elimina" />
            </span>
            <hr /></span>
        </ItemTemplate>
        <SelectedItemTemplate>
            <table class="tbl2">
                <th>
                    <asp:Button ID="LinkButton1" CssClass="buttonnl" BackColor="Red" ForeColor="White" OnClick="Button1_Click" Text="Annulla" runat="server"></asp:Button>
                    <asp:Button ID="btnInvia" CssClass="buttonnl" BackColor="Green" ForeColor="White" OnClick="btnInvia_Click" runat="server" Text="Invia"  OnClientClick='return confirm("Vuoi inviare la newsletter?")'/>
                </th>
                <tr>
                    <td>
            <asp:Label ID="lblTesto" runat="server" Text='<%# Eval("Testo") %>'></asp:Label>

                    </td>
                </tr>
            </table>
        </SelectedItemTemplate>
        <EditItemTemplate>
            <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
            <script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
            <script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
            <link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
            <link href="../Content/calendar-blue.css" rel="stylesheet" type="text/css" />
            <script type="text/javascript">
                $(document).ready(function () {
                    $(".Calender").dynDateTime({
                        showsTime: false,
                        ifFormat: "%d/%m/%Y %H:%M",
                        daFormat: "%l;%M %p, %e %m",
                        align: "BL",
                        electric: false,
                        singleClick: true,
                        displayArea: ".siblings('.dtcDisplayArea')",
                        button: ".next()"
                    });
                });
            </script>
            <table class="tbl3">
                <th colspan="2" >
                        <asp:Label ID="Label1" runat="server" Font-Bold="true" Text='<%# Eval("Data", "{0:dd MMM yyyy}") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Titolo") %>'></asp:Label><hr />
                </th>
                <tr>
                    <td>Data: </td><td>
                        <asp:TextBox ID="DataTextBox" class="Calender" runat="server" Text='<%# Bind("Data") %>' /><img src="../Images/calender.png" />
                    </td>

                </tr>
                <tr>
                    <td>Titolo: </td><td>
                        <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan=2>
                    <CKEditor:CKEditorControl ID="PreghieraTextBox" Text='<%# Bind("Testo") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl></td></tr><tr>
                    <td >
                        <asp:Button ID="UpdateButton" class="buttonnl" BackColor="Green" ForeColor="white" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" class="buttonnl" BackColor="red" ForeColor="white" runat="server" CommandName="Cancel" Text="Annulla" />

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
                <h5></h5>
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div>
                <h5></h5>
            </div>
        </LayoutTemplate>
    </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
           DeleteCommand="DELETE FROM [NewsLetter] WHERE [Id] = @Id" 
           InsertCommand="INSERT INTO [NewsLetter] ([Data], [Titolo], [Testo]) VALUES (@Data, @Titolo, @Testo)" 
           SelectCommand="SELECT * FROM [NewsLetter] order by [Data] desc" 
           UpdateCommand="UPDATE [NewsLetter] SET [Data] = @Data, [Titolo] = @Titolo, [Testo] = @Testo WHERE [Id] = @Id">
           <DeleteParameters>
               <asp:Parameter Name="Id" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter DbType="Date" Name="Data" />
               <asp:Parameter Name="Titolo" Type="String" />
               <asp:Parameter Name="Testo" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter DbType="Date" Name="Data" />
               <asp:Parameter Name="Titolo" Type="String" />
               <asp:Parameter Name="Testo" Type="String" />
               <asp:Parameter Name="Id" Type="Int32" />
           </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

