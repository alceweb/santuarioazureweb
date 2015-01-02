<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Statistiche.aspx.cs" Inherits="Admin_Statistiche" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <asp:DropDownList ID="UsersDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceUsers" DataTextField="UserName" DataValueField="UserId" CssClass="NewsLabel"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Users] ORDER BY [UserName]"></asp:SqlDataSource>
    <hr />
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
                <h3>
                Is approved <asp:CheckBox ID="IsApprovedCheckBox" runat="server" Checked='<%# Eval("IsApproved") %>' Enabled="false" />
                Is locked out<asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Eval("IsLockedOut") %>' Enabled="false" />
                </h3>
                <hr />
                Email:
                <asp:Label ForeColor="white" ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                CreateDate:
                <asp:Label ForeColor="white" ID="CreateDateLabel" runat="server" Text='<%# Eval("CreateDate", "{0:dddd dd-MMM-yyyy HH:mm}") %>' />
                <br />
                LastLoginDate:
                <asp:Label ForeColor="white" ID="LastLoginDateLabel" runat="server" Text='<%# Eval("LastLoginDate", "{0:dddd dd-MMM-yyyy HH:mm}") %>' />
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
                <asp:LinkButton ID="LinkButton1" CommandName="Edit" runat="server">Modifica</asp:LinkButton>
            </td>
        </ItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">
                Approvato <asp:CheckBox ID="IsApprovedCheckBox" runat="server" Checked='<%# Bind("IsApproved") %>' /><br />
                Commenti:<br />
                <asp:TextBox ID="CommentTextBo1" TextMode="MultiLine" runat="server" Text='<%# Bind("Comment") %>'></asp:TextBox>
                <hr />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
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
        SelectCommand="SELECT * FROM [Memberships] WHERE ([UserId] = @UserId)"
        UpdateCommand="UPDATE [Memberships] SET [IsApproved] = @IsApproved, [Comment] = @Comment WHERE [UserId] = @UserId"
       
        >
        <SelectParameters>
            <asp:ControlParameter ControlID="UsersDropDownList" Name="UserId" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

