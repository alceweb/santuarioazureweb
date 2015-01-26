<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="UserId" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="ApplicationIdLabel" runat="server" Text='<%# Eval("ApplicationId") %>' />
                </td>
                <td>
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                </td>
                <td>
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="IsAnonymousCheckBox" runat="server" Checked='<%# Eval("IsAnonymous") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="LastActivityDateLabel" runat="server" Text='<%# Eval("LastActivityDate") %>' />
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
                    <asp:TextBox ID="ApplicationIdTextBox" runat="server" Text='<%# Bind("ApplicationId") %>' />
                </td>
                <td>
                    <asp:Label ID="UserIdLabel1" runat="server" Text='<%# Eval("UserId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="IsAnonymousCheckBox" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LastActivityDateTextBox" runat="server" Text='<%# Bind("LastActivityDate") %>' />
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
                <td>
                    <asp:TextBox ID="ApplicationIdTextBox" runat="server" Text='<%# Bind("ApplicationId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="IsAnonymousCheckBox" runat="server" Checked='<%# Bind("IsAnonymous") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LastActivityDateTextBox" runat="server" Text='<%# Bind("LastActivityDate") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="ApplicationIdLabel" runat="server" Text='<%# Eval("ApplicationId") %>' />
                </td>
                <td>
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                </td>
                <td>
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="IsAnonymousCheckBox" runat="server" Checked='<%# Eval("IsAnonymous") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="LastActivityDateLabel" runat="server" Text='<%# Eval("LastActivityDate") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">ApplicationId</th>
                                <th runat="server">UserId</th>
                                <th runat="server">UserName</th>
                                <th runat="server">IsAnonymous</th>
                                <th runat="server">LastActivityDate</th>
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
                    <asp:Label ID="ApplicationIdLabel" runat="server" Text='<%# Eval("ApplicationId") %>' />
                </td>
                <td>
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                </td>
                <td>
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="IsAnonymousCheckBox" runat="server" Checked='<%# Eval("IsAnonymous") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="LastActivityDateLabel" runat="server" Text='<%# Eval("LastActivityDate") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Users] WHERE ([UserId] = @UserId)">
        <SelectParameters>
            <asp:Parameter DefaultValue="978df2cd-3435-42b2-b0b0-243b2075d6f5" Name="UserId" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
