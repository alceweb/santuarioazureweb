<%@ Page Title="Gestione utenti" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Utenti.aspx.cs" Inherits="Admin_Utenti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="UserId" DataSourceID="LinqDataSource1">
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:LinkButton ID="DeleteButton" runat="server"  CommandName="Delete" Text="Elimina" />
                    <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Eval("IsLockedOut") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="CreateDateLabel" runat="server" Text='<%# Eval("CreateDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="LastLoginDateLabel" runat="server" Text='<%# Eval("LastLoginDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="LastPasswordChangedDateLabel" runat="server" Text='<%# Eval("LastPasswordChangedDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="LastLockoutDateLabel" runat="server" Text='<%# Eval("LastLockoutDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAttemptCountLabel" runat="server" Text='<%# Eval("FailedPasswordAttemptCount") %>' />
                </td>
                <td>
                    <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                </td>
                <td>
                    <asp:Label ID="UsersLabel" runat="server" Text='<%# Eval("Users") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                    <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Eval("IsLockedOut") %>' />
                </td>
                <td>
                    <asp:Label ID="CreateDateTextBox" runat="server" Text='<%# Eval("CreateDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="LastLoginDateTextBox" runat="server" Text='<%# Eval("LastLoginDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="LastPasswordChangedDateTextBox" runat="server" Text='<%# Eval("LastPasswordChangedDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="LastLockoutDateTextBox" runat="server" Text='<%# Eval("LastLockoutDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAttemptCountTextBox" runat="server" Text='<%# Eval("FailedPasswordAttemptCount") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UsersTextBox" runat="server" Text='<%# Bind("Users") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#000;color: #fff; text-align:center; font-size: small;">
                                <th runat="server"></th>
                                <th runat="server">Email</th>
                                <th runat="server">Lockout</th>
                                <th runat="server">Data creazione</th>
                                <th runat="server">Ultimo login</th>
                                <th runat="server">Ultima cambio password</th>
                                <th runat="server">Ultimo Lockout</th>
                                <th runat="server">Errore password</th>
                                <th runat="server">Comment</th>
                                <th runat="server">Users</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                    <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="ApplicationIdLabel" runat="server" Text='<%# Eval("ApplicationId") %>' />
                </td>
                <td>
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordFormatLabel" runat="server" Text='<%# Eval("PasswordFormat") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordSaltLabel" runat="server" Text='<%# Eval("PasswordSalt") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordQuestionLabel" runat="server" Text='<%# Eval("PasswordQuestion") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordAnswerLabel" runat="server" Text='<%# Eval("PasswordAnswer") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="IsApprovedCheckBox" runat="server" Checked='<%# Eval("IsApproved") %>' Enabled="false" />
                </td>
                <td>
                    <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Eval("IsLockedOut") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="CreateDateLabel" runat="server" Text='<%# Eval("CreateDate") %>' />
                </td>
                <td>
                    <asp:Label ID="LastLoginDateLabel" runat="server" Text='<%# Eval("LastLoginDate") %>' />
                </td>
                <td>
                    <asp:Label ID="LastPasswordChangedDateLabel" runat="server" Text='<%# Eval("LastPasswordChangedDate") %>' />
                </td>
                <td>
                    <asp:Label ID="LastLockoutDateLabel" runat="server" Text='<%# Eval("LastLockoutDate") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAttemptCountLabel" runat="server" Text='<%# Eval("FailedPasswordAttemptCount") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAttemptWindowStartLabel" runat="server" Text='<%# Eval("FailedPasswordAttemptWindowStart") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAnswerAttemptCountLabel" runat="server" Text='<%# Eval("FailedPasswordAnswerAttemptCount") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAnswerAttemptWindowsStartLabel" runat="server" Text='<%# Eval("FailedPasswordAnswerAttemptWindowsStart") %>' />
                </td>
                <td>
                    <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                </td>
                <td>
                    <asp:Label ID="UsersLabel" runat="server" Text='<%# Eval("Users") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
<asp:LinqDataSource ID="LinqDataSource1" runat="server" 
    ContextTypeName="DataClassesDataContext" EntityTypeName="" 
    TableName="Memberships" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
</asp:LinqDataSource>

</asp:Content>

