<%@ Page Title="Statistiche preghiere" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="StatistichePreghiere.aspx.cs" Inherits="Admin_StatistichePreghiere" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <table>
        <tr>
            <td colspan="2" >
                Giorni in cui sono state scritte preghiere: <asp:Label ID="lblData" ForeColor="red" runat="server" ></asp:Label><br />
                Utenti che hanno scritto preghiere: <asp:Label ID="lblUtente" ForeColor="Red" runat="server" ></asp:Label><br />
                 
                <asp:ListView ID="ListView3"  runat="server">
                    <ItemTemplate>
                        Totale preghiere scritte: <asp:Label ID="lblTot" ForeColor="Red" runat="server" Text='<%#Eval("tot") %>'></asp:Label>
                    </ItemTemplate>
                </asp:ListView><br />
            </td>
        </tr>
        <tr>
            <td>
            <asp:ListView ID="ListView2" OnDataBound="ListView2_DataBound" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <td>
                        <asp:Label ID="LabelData" runat="server" Text='<%# Eval("Data", "{0:dddd dd MMM yy}") %>'></asp:Label>
                    </td>
                    <td>
                    <asp:Label CssClass="float-right" ID="Label2" ForeColor="red" runat="server" Text='<%#Eval("Preghiere") %>'></asp:Label>

                    </td>
                </ItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <LayoutTemplate>
            <table id="Table1" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td1" runat="server">
                        <table class="tbl2" id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
            </asp:ListView>
            </td>
            <td>
                <asp:ListView ID="ListView1" OnDataBound="ListView1_DataBound" runat="server" DataKeyNames="Utente" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <td>
                            <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server">
                                <asp:Label ID="LabelUtente" runat="server" Text='<%# Eval("Utente") %>'></asp:Label>
                            </asp:LinkButton>
                        </td>
                        <td>
                            <asp:Label ID="Label2" ForeColor="red" runat="server" Text='<%#Eval("Preghiere") %>'></asp:Label>

                        </td>
                    </ItemTemplate>
                    <SelectedItemTemplate>
                        <td style="color: green"><asp:Label ID="Label2" ForeColor="red" runat="server" Text='<%#Eval("Utente") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label1" ForeColor="red" runat="server" Text='<%#Eval("Preghiere") %>'></asp:Label>

                        </td>
                    </SelectedItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <LayoutTemplate>
                        <table id="Table1" runat="server">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table class="tbl2" id="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>

            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" />
</asp:Content>

