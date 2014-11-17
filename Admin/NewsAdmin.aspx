<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewsAdmin.aspx.cs" Inherits="Admin_NewsAdmin" %>
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
    <div style="border: thin solid #FFFFFF; margin-left:10px; border-radius:20px; padding-right:10px; padding-left:10px; background-image: url('../Images/SfondoTabellaNews.png'); background-repeat: repeat;" >
        <h3 style="text-align:center">Scegli la news da modificare
        <asp:DropDownList ID="DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Titolo" DataValueField="Id">
            </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id"
                InsertCommand="INSERT INTO [News] ([Data], [Titolo], [DescrizioneBreve], [Descrizione], [Pubblica]) VALUES (@Data, @Titolo, @DescrizioneBreve, @Descrizione, @Pubblica)"
                SelectCommand="SELECT * FROM [News] ORDER BY [Data]"
                UpdateCommand="UPDATE [News] SET [Data] = @Data, [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Pubblica] = @Pubblica WHERE [Id] = @Id">
        </asp:SqlDataSource>
        </h3>
        <hr />
        <asp:Panel ID="pnlGen" Visible="false" runat="server">
        <asp:ListView ID="ListView1" runat="server" SelectedIndex="0" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <span style="">Id:
            <asp:Label CssClass="NewsLabel" ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    Data:
            <asp:Label CssClass="NewsLabel" ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                    Titolo:
            <asp:Label CssClass="NewsLabel" ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                    <br /><br />
                    DescrizioneBreve:
                    <asp:Label CssClass="NewsLabel" ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                    <asp:Label ID="Label1" runat="server" Text="Pubblica: "></asp:Label><asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false"  />
                    <br />
                    Descrizione:<br />
                    <div class="NewsLabel">
                    <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                    </div>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                    <br />
                </span>
            </ItemTemplate>
            <EditItemTemplate>
                <span style="">
                    <div style="width: 100%">
                        <div style="float: left; height:160px">
                        <asp:TextBox ID="TextBoxData" Width="200px" runat="server" Text='<%# Bind("Data") %>'></asp:TextBox>
                        </div>
                        <br />
                        <asp:Label ID="TitoloLabel" Width="130px" runat="server" Text="Titolo:"></asp:Label><br />
                        <span style="padding-left: 20px">
                            <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' /></span><br />
                        <asp:Label ID="DescrizioneBreveLabel" Width="130px" runat="server" Text="Descrizione breve:"></asp:Label><br />
                        <span style="padding-left: 20px">
                            <asp:TextBox ID="DescrizioneBreveTextBox" runat="server" Text='<%# Bind("DescrizioneBreve") %>' /></style="padding-left:20px">
            <br />
                            Pubblica
                            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </div>
                    <br />
                    <asp:Label ID="DescrizioneLabel" Width="130px" runat="server" Text="Testo news:"></asp:Label>
                    <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                    <hr />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                    <br />
                    <br />
                </span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>Non è stato restituito alcun dato.</span>
            </EmptyDataTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id" InsertCommand="INSERT INTO [News] ([Data], [Titolo], [DescrizioneBreve], [Descrizione], [Pubblica]) VALUES (@Data, @Titolo, @DescrizioneBreve, @Descrizione, @Pubblica)" SelectCommand="SELECT * FROM [News] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [News] SET [Data] = @Data, [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Pubblica] = @Pubblica WHERE [Id] = @Id">
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
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="Data" />
                <asp:Parameter Name="Titolo" Type="String" />
                <asp:Parameter Name="DescrizioneBreve" Type="String" />
                <asp:Parameter Name="Descrizione" Type="String" />
                <asp:Parameter Name="Pubblica" Type="Boolean" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <hr />
        <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" Visible="false" runat="server">Gestisci immagine principale</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" runat="server">Gestisci galleria</asp:LinkButton>
            <asp:Panel ID="pnlImg" runat="server">
                <h2>Immagine principale</h2>
                <p>
                    <asp:Image ID="Image2" CssClass="NewsImg" runat="server" />
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                    <asp:Button ID="btnDownload2" OnClick="btnDownload2_Click" runat="server" Text="Download" /><br />
                    <asp:Label ID="LblUploadOk2" runat="server"></asp:Label>
                </p>
                <hr />
            </asp:Panel>
            <asp:Panel ID="pnlGalleria" Visible="false" runat="server">
                <h2>Immagini galleria</h2>
                <asp:FileUpload ID="FileUpload1" AllowMultiple="true" runat="server" />
                <asp:Button ID="btnDownload" OnClick="btnDownload_Click" Text="Dowload" runat="server" /><br />
                <asp:Label ID="LblUploadOk" runat="server"></asp:Label>
                <asp:Repeater ID="lista" runat="server" EnableTheming="False">
                    <HeaderTemplate>
                        <div>
                        </div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <img style="margin: 5px; height: 60px; float: left" src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
            </asp:Panel>

        </asp:Panel>
    </div>
</asp:Content>

