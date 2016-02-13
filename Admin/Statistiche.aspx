<%@ Page Title="Statistiche" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Statistiche.aspx.cs" Inherits="Admin_Statistiche" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div class="divStat">
        <strong>Accessi ultimi 10 giorni</strong><br />
        <asp:Label ID="lblAcc" ForeColor="red" runat="server"></asp:Label>
        <hr />
        <asp:ListView ID="ListView2" OnDataBound="ListView2_DataBound" runat="server" DataSourceID="SqlDataSourceCount">
            <ItemTemplate>
                <div>
                        <asp:Label ForeColor="Green" Font-Bold="true" Font-Italic="true" ID="numeroLabel" runat="server" Text='<%# Eval("UserName") %>' />  <asp:Label ID="Label1" ForeColor="Green" runat="server" Text='<%# Eval("LastLoginDate", "{0:dd-MMM HH:mm}") %>'></asp:Label><br />
                        <em><asp:Label ID="lblMail" CssClass="txt-right" runat="server" Text='<%# Eval("Email") %>'></asp:Label></em>
                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceCount" runat="server"
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
            SelectCommand="select Users.UserName, Memberships.Email, Memberships.LastLoginDate from Users Left Join Memberships on Memberships.UserId=Users.UserId where Memberships.LastLoginDate > convert(date, getdate() - 10) and UserName != 'Cesare' order by Memberships.LastLoginDate desc"></asp:SqlDataSource>
    </div>
    <div class="divStat">
        <strong>Nuovi iscritti ultimi 30 giorni</strong><br />
        <asp:Label ID="lblIsc" ForeColor="Red" runat="server"></asp:Label>
        <hr />
        <asp:ListView ID="ListView1" OnDataBound="ListView1_DataBound" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div>
                        <asp:Label ForeColor="Green" Font-Bold="true" Font-Italic="true" ID="numeroLabel" runat="server" Text='<%# Eval("UserName") %>' />
                        <asp:Label ID="Label1" ForeColor="Green" runat="server" Text='<%# Eval("CreateDate", "{0:dd-MMM HH:mm}") %>'></asp:Label><br />
                        <em><asp:Label ID="Label2" CssClass="txt-right" runat="server" Text='<%# Eval("Email") %>'></asp:Label></em>

                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
            SelectCommand="select Users.UserName, Memberships.Email, Memberships.CreateDate from Users Left Join Memberships on Memberships.UserId=Users.UserId where Memberships.CreateDate > convert(date, getdate() - 30) order by Memberships.CreateDate desc"></asp:SqlDataSource>
    </div>
</asp:Content>

