﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ElencoUtenti.aspx.cs" Inherits="Admin_ElencoUtenti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div style="width:100%; text-align:center">
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                Totale iscritti: <strong><asp:Label ID="Label1" runat="server" Text='<%# Eval("Totale") %>'></asp:Label></strong>

            </ItemTemplate>
        </asp:ListView><br />
        <asp:SqlDataSource ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="select count(UserId) as totale from users" runat="server"></asp:SqlDataSource>
    <asp:DropDownList ID="UsersDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceUsers" DataTextField="UserName" DataValueField="UserId" CssClass="NewsLabel"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Users] ORDER BY [UserName]"></asp:SqlDataSource>
    </div>
    <hr />
    <span class="float-left">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="UserId" DataSourceID="SqlDataSource1" GroupItemCount="3">
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
            <td runat="server" style="">
                    <div style="width:100%; text-align:center"><h3>Statistiche per l'utente: <strong><asp:Label ID="Label2" runat="server" Text='<%#Eval("UserName") %>'></asp:Label></strong></h3>
                <h3>
                Is approved <asp:CheckBox ID="IsApprovedCheckBox" runat="server" Checked='<%# Eval("IsApproved") %>' Enabled="false" />
                Is locked out<asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Eval("IsLockedOut") %>' Enabled="false" />
                </h3></div>
                <hr />
                Email:
                <asp:Label ForeColor="white" ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                CreateDate:
                <asp:Label ForeColor="white" ID="CreateDateLabel" runat="server" Text='<%# Eval("CreateDate", "{0:dddd dd-MMM-yyyy HH:mm}") %>' />
                <br />
                LastLoginDate:
                <asp:Label ForeColor="white" ID="LastLoginDateLabel" runat="server" Text='<%# Eval("LastLoginDate", "{0:dddd dd-MMM-yyyy HH:mm:ss}") %>' />
                <br />
                LastLockoutDate:
                <asp:Label ForeColor="white" ID="LastLockoutDateLabel" runat="server" Text='<%# Eval("LastLockoutDate", "{0:dddd dd-MMM-yyyy HH:mm}") %>' /><br />
                FailedPasswordAttemptCount:
                <asp:Label  ForeColor="white" ID="FailedPasswordAttemptCountLabel" runat="server" Text='<%# Eval("FailedPasswordAttemptCount") %>' />
                <br />
                LastPasswordChangedDate:
                <asp:Label ForeColor="white" ID="LastPasswordChangedDateLabel" runat="server" Text='<%# Eval("LastPasswordChangedDate", "{0:dddd dd-MMM-yyyy HH:mm}") %>' />
                <br />
                FailedPasswordAttemptWindowStart:
                <asp:Label ForeColor="white" ID="FailedPasswordAttemptWindowStartLabel" runat="server" Text='<%# Eval("FailedPasswordAttemptWindowStart") %>' />
                <br />
                FailedPasswordAnswerAttemptCount:
                <asp:Label ForeColor="white" ID="FailedPasswordAnswerAttemptCountLabel" runat="server" Text='<%# Eval("FailedPasswordAnswerAttemptCount") %>' />
                <br />
                FailedPasswordAnswerAttemptWindowsStart:
                <asp:Label ForeColor="white" ID="FailedPasswordAnswerAttemptWindowsStartLabel" runat="server" Text='<%# Eval("FailedPasswordAnswerAttemptWindowsStart") %>' />
                <br />
                ApplicationId:<asp:Label  ForeColor="white" ID="ApplicationIdLabel" runat="server" Text='<%# Eval("ApplicationId") %>' />
                <br />
                UserId:
                <asp:Label ForeColor="white" ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                <br />
                Password:
                <asp:Label ForeColor="white" ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                PasswordFormat:
                <asp:Label ForeColor="white" ID="PasswordFormatLabel" runat="server" Text='<%# Eval("PasswordFormat") %>' />
                <br />
                PasswordSalt:
                <asp:Label ForeColor="white" ID="PasswordSaltLabel" runat="server" Text='<%# Eval("PasswordSalt") %>' />
                <br />
                PasswordQuestion:
                <asp:Label ForeColor="white" ID="PasswordQuestionLabel" runat="server" Text='<%# Eval("PasswordQuestion") %>' />
                <br />
                PasswordAnswer:
                <asp:Label ForeColor="white" ID="PasswordAnswerLabel" runat="server" Text='<%# Eval("PasswordAnswer") %>' />
                <br />
                Comment:
                <asp:Label ForeColor="green" ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                <br />
                <hr />
                <asp:LinkButton ID="LinkButton1" ForeColor="Red" CommandName="Edit" runat="server">Modifica / Blocca</asp:LinkButton>
            </td>
        </ItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">
                Approvato <asp:CheckBox ID="IsApprovedCheckBox" runat="server" Checked='<%# Bind("IsApproved") %>' />
                <asp:Label ID="Label3" runat="server" ForeColor="white" Text="(Disattivando la casella l'utente non potrà più accedere)"></asp:Label>
                <br />
                Bloccato <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Bind("IsLockedOut") %>' />
                <asp:Label ID="Label4" runat="server" ForeColor="white" Text="(A seguito di un blocco automatico, disattivando la casella l'utente sarà sbloccato)"></asp:Label><br />
                Commenti:<br />
                <asp:TextBox ID="CommentTextBo1" TextMode="MultiLine" runat="server" Text='<%# Bind("Comment") %>'></asp:TextBox>
                <hr />
                <asp:Button ID="UpdateButton" BackColor="green" ForeColor="white" runat="server" CommandName="Update" Text="Aggiorna" />
                <asp:Button ID="CancelButton" BackColor="red" ForeColor="white" runat="server" CommandName="Cancel" Text="Annulla" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table class="tbl2" id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT *, Users.UserName FROM [Memberships] left join Users on Users.UserId=Memberships.UserId WHERE ([Memberships].[UserId] = @UserId)"
        UpdateCommand="UPDATE [Memberships] SET [IsApproved] = @IsApproved, [IsLockedOut] = @IsLockedOut, [Comment] = @Comment WHERE [Memberships].[UserId] = @UserId">
        <SelectParameters>
            <asp:ControlParameter ControlID="UsersDropDownList" Name="UserId" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </span>
</asp:Content>

