<%@ Page Title="Inserimento news" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewsAdd.aspx.cs" Inherits="Admin_NewsAdd" %>
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
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <InsertItemTemplate>
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
                                    align: "BR",
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
                                    align: "BR",
                                    electric: false,
                                    singleClick: true,
                                    displayArea: ".siblings('.dtcDisplayArea')",
                                    button: ".next()"
                                });
                            });
                        </script>
            <span style="">
                <div style="width: 100%">
                    <div style="width: 100%; display: inline-block">
                        <div style="float: left; margin-right: 30px">
                            Pubblica
                            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                        </div>
                        <div style="width: 100%;">
                            <span style="float: left">
                                <asp:Label ID="TitoloLabel" Width="110px" runat="server" Text="Titolo:"></asp:Label><br />
                                <asp:TextBox ID="TitoloTextBox" Width="110px" runat="server" Text='<%# Bind("Titolo") %>' Font-Size="Small" /><br />
                            </span>
                            <span style="float: right">
                                <asp:Label ID="DescrizioneBreveLabel" Width="130px" runat="server" Text="Descrizione breve:"></asp:Label><br />
                                <asp:TextBox ID="DescrizioneBreveTextBox" runat="server" Text='<%# Bind("DescrizioneBreve") %>' Font-Size="Small" />
                            </span>
                        </div>
                    </div>
                    <div style="border-width: thin; border-color: #452A15; border-top-style: solid">
                        <span style="float: left">Data evento:<br />
                            <asp:TextBox ID="TextBoxData" Width="160px" runat="server" class="Calender" Text='<%# Bind("Data", "{0:dd-MMM-yy}") %>' Font-Size="Small"></asp:TextBox>
                            <img src="../Images/calender.png" />
                        </span>
                        <span style="float: right">Data fine pubblicazione<br />
                            <asp:TextBox ID="txtDataFine" Width="160px" ForeColor="Red" class="Cal" Text='<%# Bind("DataFine", "{0:dd-MMM-yy hh:mm}") %>' Font-Size="Small" runat="server"></asp:TextBox>
                            <img src="../Images/calender.png" />
                        </span>
                        <span style="float: right">Data inizio pubblicazione<br />
                            <asp:TextBox ID="txtDataInizio" Width="160px" ForeColor="Green" class="Cal" Text='<%# Bind("DataInizio", "{0:dd-MMM-yy hh:mm}") %>' Font-Size="Small" runat="server"></asp:TextBox>
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
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                    <br />
                    <br />
                </div>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [News] ([Data], [DataInizio], [dataFine], [Titolo], [DescrizioneBreve], [Descrizione], [Pubblica]) VALUES (@Data, @DataInizio, @DataFine, @Titolo, @DescrizioneBreve, @Descrizione, @Pubblica)" 
        SelectCommand="SELECT * FROM [News]" 
        UpdateCommand="UPDATE [News] SET [Data] = @Data, [DataInizio] = @DataInizio, [DataFine] = @DataFine, [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Pubblica] = @Pubblica WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter DbType="DateTime" Name="DataInizio" />
            <asp:Parameter DbType="DateTime" Name="DataFine" />
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="DescrizioneBreve" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
        </InsertParameters>
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
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

</asp:Content>

