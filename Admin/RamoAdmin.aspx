<%@ Page Title="Gestione Ramo Fiorito" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="RamoAdmin.aspx.cs" Inherits="Admin_RamoAdmin" %>

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
    <h2></h2>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="FirstItem">
         <ItemTemplate>
            <tr style="">
                <td>
                    <asp:LinkButton ID="EditButton" ForeColor="Green" runat="server" CommandName="Edit" Text="Modifica"></asp:LinkButton>
                    <asp:LinkButton ID="DeleteButton" ForeColor="red" runat="server" CommandName="Delete" OnClientClick='return confirm("Stai cancellando definitivamente un record")' Text="Elimina" Font-Bold="True" />
                </td>
                <td>
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd MMMM yyyy}") %>' />
                </td>
                <td>
                        <asp:Repeater ID="lista" runat="server" 
                            DataSource='<%# System.IO.Directory.GetFiles(Server.MapPath("~/Ramo/"), Eval("id") + ".pdf") %>' 
                            EnableTheming="False">
                        <HeaderTemplate>
                            <div>
                            </div>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <a target="_blank" href='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'>Leggi</a>
                        </ItemTemplate>
                        <FooterTemplate></ul></FooterTemplate>
                    </asp:Repeater>
                </td>
            </tr>
        </ItemTemplate>
       <EditItemTemplate>
            <tr style="background-color: #000000; color: #FFFFFF">
                <td>
                    <asp:LinkButton ID="UpdateButton" OnClick="UpdateButton_Click" ForeColor="Green" runat="server" Text="Aggiorna" />
                    <asp:LinkButton ID="CancelButton" ForeColor="red" runat="server" CommandName="Cancel" Text="Chiudi modifica" />
                </td>
                <td>
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd MMMM yyyy}") %>' />
                </td>
                <td></td>
            </tr>
           <tr>
               <td colspan="4">
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#AE9383" />
                   <h2><asp:Label ID="uploadOk" runat="server"></asp:Label></h2>
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
                        </script>
            <tr>
                <td colspan="4">
                    <h3 style="text-align:center">Aggiungi nuovo</h3>
                </td>
            </tr>
            <tr style="background-color: #9B8373">
                <td><br />
                    <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" ForeColor="Green"  Text="Aggiungi" />
                    <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" ForeColor="Red"  Text="Annulla" />
                </td>
                <td colspan="2">
                    Inserisci la data <asp:TextBox ID="DataTextBox" Width="150px" CssClass="Calender" runat="server" Text='<%# Bind("Data", "{0:dd MMMM yyyy}") %>' />

                </td>
                <td>
                </td>
            </tr>
             <tr>
                <td colspan="4">
                    <h3 style="text-align:center">Modifica</h3>
                </td>
            </tr>
       </InsertItemTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                    <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
        <LayoutTemplate>
            <table style="margin:auto" runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table class="tbl2" id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server"></th>
                                <th runat="server"></th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="48">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        DeleteCommand="DELETE FROM [Ramo] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Ramo] ([Data]) VALUES (@Data)" 
        SelectCommand="SELECT * FROM [Ramo] ORDER BY [Data] DESC" 
        UpdateCommand="UPDATE [Ramo] SET [Data] = @Data WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="Data" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

