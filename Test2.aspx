<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test2.aspx.cs" Inherits="Test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<script src="Admin/Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Admin/Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Admin/Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Content/calendar-blue.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(document).ready(function () {
        $("#<%= TextBox1.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%d/%m/%Y %H:%M",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
    $(document).ready(function () {
        $("#<%=TextBox2.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%d/%m/%Y %H:%M",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:TextBox ID="TextBox1" runat="server" ReadOnly = "true"></asp:TextBox>
<img src="Images/calender.png" /><br /><br />
    <asp:TextBox ID="TextBox2" runat="server"  ReadOnly = "true"></asp:TextBox>
<img src="Images/calender.png" /><br /><br />
<asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" /><hr />
    </div>
        <asp:ListView ID="ListView1" OnItemEditing="ListView1_ItemEditing" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="DataInizioLabel" runat="server" Text='<%# Eval("DataInizio") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OraInizioLabel" runat="server" Text='<%# Eval("OraInizio") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataFineLabel" runat="server" Text='<%# Eval("DataFine") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OraFineLabel" runat="server" Text='<%# Eval("OraFine") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescrizioneBreveTextBox" runat="server" Text='<%# Bind("DescrizioneBreve") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescrizioneTextBox" runat="server" Text='<%# Bind("Descrizione") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DataInizioTextBox" runat="server" Text='<%# Bind("DataInizio") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OraInizioTextBox" runat="server" Text='<%# Bind("OraInizio") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DataFineTextBox" runat="server" Text='<%# Bind("DataFine") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OraFineTextBox" runat="server" Text='<%# Bind("OraFine") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>Non è stato restituito alcun dato.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescrizioneBreveTextBox" runat="server" Text='<%# Bind("DescrizioneBreve") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescrizioneTextBox" runat="server" Text='<%# Bind("Descrizione") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DataInizioTextBox" runat="server" Text='<%# Bind("DataInizio") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OraInizioTextBox" runat="server" Text='<%# Bind("OraInizio") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DataFineTextBox" runat="server" Text='<%# Bind("DataFine") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OraFineTextBox" runat="server" Text='<%# Bind("OraFine") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="DataInizioLabel" runat="server" Text='<%# Eval("DataInizio") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OraInizioLabel" runat="server" Text='<%# Eval("OraInizio") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataFineLabel" runat="server" Text='<%# Eval("DataFine") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OraFineLabel" runat="server" Text='<%# Eval("OraFine") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">Id</th>
                                    <th runat="server">Data</th>
                                    <th runat="server">Titolo</th>
                                    <th runat="server">DescrizioneBreve</th>
                                    <th runat="server">Descrizione</th>
                                    <th runat="server">Pubblica</th>
                                    <th runat="server">DataInizio</th>
                                    <th runat="server">OraInizio</th>
                                    <th runat="server">DataFine</th>
                                    <th runat="server">OraFine</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="DataInizioLabel" runat="server" Text='<%# Eval("DataInizio") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OraInizioLabel" runat="server" Text='<%# Eval("OraInizio") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataFineLabel" runat="server" Text='<%# Eval("DataFine") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OraFineLabel" runat="server" Text='<%# Eval("OraFine") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id" InsertCommand="INSERT INTO [News] ([Data], [Titolo], [DescrizioneBreve], [Descrizione], [Pubblica], [DataInizio], [OraInizio], [DataFine], [OraFine]) VALUES (@Data, @Titolo, @DescrizioneBreve, @Descrizione, @Pubblica, @DataInizio, @OraInizio, @DataFine, @OraFine)" SelectCommand="SELECT * FROM [News]" UpdateCommand="UPDATE [News] SET [Data] = @Data, [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Pubblica] = @Pubblica, [DataInizio] = @DataInizio, [OraInizio] = @OraInizio, [DataFine] = @DataFine, [OraFine] = @OraFine WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="Data" />
                <asp:Parameter Name="Titolo" Type="String" />
                <asp:Parameter Name="DescrizioneBreve" Type="String" />
                <asp:Parameter Name="Descrizione" Type="String" />
                <asp:Parameter Name="Pubblica" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="DataInizio" />
                <asp:Parameter DbType="Time" Name="OraInizio" />
                <asp:Parameter DbType="Date" Name="DataFine" />
                <asp:Parameter DbType="Time" Name="OraFine" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="Data" />
                <asp:Parameter Name="Titolo" Type="String" />
                <asp:Parameter Name="DescrizioneBreve" Type="String" />
                <asp:Parameter Name="Descrizione" Type="String" />
                <asp:Parameter Name="Pubblica" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="DataInizio" />
                <asp:Parameter DbType="Time" Name="OraInizio" />
                <asp:Parameter DbType="Date" Name="DataFine" />
                <asp:Parameter DbType="Time" Name="OraFine" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
