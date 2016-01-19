<%@ Page Title="Gestione news" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewsAdmin.aspx.cs" Inherits="Admin_NewsAdmin" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div  >
        <h3 style="text-align:center">Scegli la news da modificare
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Titolo" DataValueField="Id">
            </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id"
                InsertCommand="INSERT INTO [News] ([Data], [Titolo], [DescrizioneBreve], [Descrizione], [Pubblica]) VALUES (@Data, @Titolo, @DescrizioneBreve, @Descrizione, @Pubblica)"
                SelectCommand="SELECT * FROM [News] ORDER BY [Data] DESC"
                UpdateCommand="UPDATE [News] SET [Data] = @Data, [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Pubblica] = @Pubblica WHERE [Id] = @Id">
        </asp:SqlDataSource>
        </h3>
        <hr />
                <asp:ListView ID="ListView1" runat="server" SelectedIndex="0" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                            <asp:Button ID="EditButton" runat="server" ForeColor="White" BackColor="Green" CommandName="Edit" Text="Modifica" />
                            <asp:Button ID="DeleteButton" runat="server" ForeColor="White" BackColor="Red" OnClientClick='return confirm("Ricordati di cancellare prima tutte le immagini di questo evento. Cancello la news?")' CommandName="Delete" Text="Elimina" /><hr />
                        <span style="">Id:
                            <asp:Label CssClass="NewsLabel" ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            Data:
                            <asp:Label CssClass="NewsLabel" ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd-MMM-yy}") %>' />
                            Data inizio pubblicazione:
                            <asp:Label CssClass="NewsLabel" ID="DataILabel" runat="server" Text='<%# Eval("DataInizio", "{0:dd-MMM-yy HH:mm}") %>' />
                            Data fine pubblicazione:
                           <asp:Label CssClass="NewsLabel" ID="DataFLabel" runat="server" Text='<%# Eval("DataFine", "{0:dd-MMM-yy HH:mm}") %>' />
                            <br />
                            <br />
                            Titolo:
                            <asp:Label CssClass="NewsLabel" ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                            DescrizioneBreve:
                            <asp:Label CssClass="NewsLabel" ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                            <asp:Label ID="Label1" runat="server" Text="Pubblica: "></asp:Label><asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                            <br />
                            <br />
                            Descrizione:<br />
                            <div class="NewsLabel">
                                <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                            </div>
                        </span>
                        <hr />
                            <asp:Button ID="Button1" runat="server" ForeColor="White" BackColor="Green" CommandName="Edit" Text="Modifica" />
                            <asp:Button ID="Button2" runat="server" ForeColor="White" BackColor="Red" OnClientClick='return confirm("Ricordati di cancellare prima tutte le immagini di questo evento. Cancello la news?")' CommandName="Delete" Text="Elimina" />
                    </ItemTemplate>
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
                            $(document).ready(function () {
                                $(".Cal").dynDateTime({
                                    showsTime: true,
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
                            <div style="width: 100%">
                                <div style="width: 100%; display: inline-block">
                                        Pubblica
                                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                                        <div >
                                            <asp:Label ID="TitoloLabel" runat="server" Text="Titolo:"></asp:Label>
                                            <asp:TextBox ID="TitoloTextBox" Width="150px" runat="server" Text='<%# Bind("Titolo") %>' Font-Size="Small" />
                                            <asp:Label ID="DescrizioneBreveLabel"  runat="server" Text="Descrizione breve:"></asp:Label>
                                            <asp:TextBox ID="DescrizioneBreveTextBox" runat="server" Text='<%# Bind("DescrizioneBreve") %>' Font-Size="Small" />
                                        </div>
                                    </div>
                                </div>
                                <div style="border-width: thin; border-color: #452A15; border-top-style: solid">
                                    <span style="float: left">Data evento:<br />
                                        <asp:TextBox ID="TextBoxData" Width="160px" runat="server" class="Calender" Text='<%# Bind("Data") %>' Font-Size="Small"></asp:TextBox>
                                        <img src="../Images/calender.png" />
                                    </span>
                                    <span style="float: right">Data fine pubblicazione<br />
                                        <asp:TextBox ID="txtDataFine" Width="160px" ForeColor="Red" class="Cal" Text='<%# Bind("DataFine") %>' Font-Size="Small" runat="server"></asp:TextBox>
                                        <img src="../Images/calender.png" />
                                    </span>
                                    <span style="float: right">Data inizio pubblicazione<br />
                                        <asp:TextBox ID="txtDataInizio" Width="160px" ForeColor="Green" class="Cal" Text='<%# Bind("DataInizio") %>' Font-Size="Small" runat="server"></asp:TextBox>
                                        <img src="../Images/calender.png" />
                                    </span>
                                </div>
                                <br />
                                <br />
                            </div>
                            <div style="border-width: thin; border-color: #452A15; border-top-style: solid; margin-top: 20px">
                                <asp:Label ID="DescrizioneLabel" Width="130px" runat="server" Text="Testo news:"></asp:Label>
                                <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                                <hr />
                                <asp:Button ID="UpdateButton" ForeColor="White" BackColor="Green" runat="server" CommandName="Update" Text="Aggiorna" />
                                <asp:Button ID="CancelButton" ForeColor="White" BackColor="Red" runat="server" CommandName="Cancel" Text="Annulla" />

                            </div>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id" InsertCommand="INSERT INTO [News] ([Data], [DataInizio], [DataFine], [Titolo], [DescrizioneBreve], [Descrizione], [Pubblica]) VALUES (@Data, @DataInizio, @DataFine, @Titolo, @DescrizioneBreve, @Descrizione, @Pubblica)"
                    SelectCommand="SELECT * FROM [News] WHERE ([Id] = @Id)"
                    UpdateCommand="UPDATE [News] SET [Data] = @Data, [DataInizio] = @DataInizio, [DataFine] = @DataFine, [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Pubblica] = @Pubblica WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="Data" />
                        <asp:Parameter DbType="DateTime" Name="DataInizio" />
                        <asp:Parameter DbType="DateTime" Name="DataFine" />
                        <asp:Parameter Name="Titolo" Type="String" />
                        <asp:Parameter Name="DescrizioneBreve" Type="String" />
                        <asp:Parameter Name="Descrizione" Type="String" />
                        <asp:Parameter Name="Pubblica" Type="Boolean" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
        <br />
    </div>
</asp:Content>

