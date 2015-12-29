<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="PasswordFailed.aspx.cs" Inherits="Admin_PasswordFailed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div>
        <h2>Utenti con failed login password</h2><hr />
    </div>
    <div style="width:100%; text-align:center">
        <asp:ListBox ID="UsersListBox" runat="server" AutoPostBack="true" DataSourceID="SqlDataSourceUsers" DataTextField="UserName" DataValueField="UserId" CssClass="NewsLabel float-left tbl2" style="margin-top:10px; height:380px"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [Users] left join Memberships on Memberships.UserId=Users.UserId where FailedPasswordAttemptCount >= 1  order by [FailedPasswordAttemptWindowStart] desc">
    </asp:SqlDataSource>
    </div>
    <div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="UserId" DataSourceID="SqlDataSource1" GroupItemCount="3">
        <EmptyItemTemplate>
            <td id="Td1" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
            <td id="Td2" runat="server" style="">
                Email:
                <asp:Label ForeColor="white" ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                CreateDate:
                <asp:Label ForeColor="white" ID="CreateDateLabel" runat="server" Text='<%# Eval("CreateDate", "{0:dddd dd-MMM-yyyy HH:mm}") %>' />
                <br />
                LastLoginDate:
                <asp:Label ForeColor="green" ID="LastLoginDateLabel" runat="server" Text='<%# Eval("LastLoginDate", "{0:dddd dd-MMM-yyyy HH:mm:ss}") %>' />
                <br />
                <div style="display:inline-block">
                FailedPassword:
                <asp:Label ForeColor="green" ID="FailedPasswordAttemptWindowStartLabel" runat="server" Text='<%# Eval("FailedPasswordAttemptWindowStart", "{0:dddd dd-MMM-yyyy HH:mm:ss}") %>' />

                </div>
                <br />
                LastLockoutDate:
                <asp:Label ForeColor="#CC0000" ID="LastLockoutDateLabel" runat="server" Text='<%# Eval("LastLockoutDate", "{0:dddd dd-MMM-yyyy HH:mm:ss}") %>' /><br />
                FailedPasswordAttemptCount:
                <asp:Label  ForeColor="red" ID="FailedPasswordAttemptCountLabel" runat="server" Text='<%# Eval("FailedPasswordAttemptCount") %>' />
                <br />
                LastPasswordChangedDate:
                <asp:Label ForeColor="white" ID="LastPasswordChangedDateLabel" Style="display:inline-block" runat="server" Text='<%# Eval("LastPasswordChangedDate", "{0:dddd dd-MMM-yyyy HH:mm}") %>' />
                <br />
                Comment:
                <asp:Label ForeColor="green" ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                <br />
                Approvato <asp:CheckBox ID="IsApprovedCheckBox" Enabled="false" runat="server" Checked='<%# Eval("IsApproved") %>' />
                Bloccato <asp:CheckBox ID="CheckBox1" runat="server" Enabled="false" Checked='<%# Eval("IsLockedOut") %>' />

                <hr />
                <asp:LinkButton ID="LinkButton1" ForeColor="Red" CommandName="Edit" runat="server">Modifica / Blocca</asp:LinkButton>
            </td>
        </ItemTemplate>
        <EditItemTemplate>
            <td id="Td3" runat="server" style="">
                Approvato <asp:CheckBox ID="IsApprovedCheckBox" runat="server" Checked='<%# Bind("IsApproved") %>' />
                <asp:Label ID="Label3" runat="server" ForeColor="red" Text="(Disattivando la casella l'utente non potrà più accedere)"></asp:Label>
                <br />
                Bloccato <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Bind("IsLockedOut") %>' />
                <asp:Label ID="Label4" runat="server" ForeColor="red" Text="(Dopo 5 tentativi di password errati)"></asp:Label><br />
                Commenti:<br />
                <asp:TextBox ID="CommentTextBo1" TextMode="MultiLine" runat="server" Text='<%# Bind("Comment") %>'></asp:TextBox>
                <hr />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>Scegli un utente nella list view.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td4" runat="server">
                        <table class="tbl2" id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td5" runat="server" style="">
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
            <asp:ControlParameter ControlID="UsersListBox" Name="UserId" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    </div>

</asp:Content>

