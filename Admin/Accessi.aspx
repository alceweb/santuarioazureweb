<%@ Page Title="Contatore accessi giornalieri per utenti registrati" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Accessi.aspx.cs" Inherits="Admin_Accessi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <h3 style="text-align:center">Contatore accessi<br />utenti registrati</h3>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="numeroLabel" runat="server" Text='<%# Eval("accessi") %>' />
                </td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="select count(memberships.UserId) as accessi from Memberships Left Join Users on Memberships.UserId=Users.UserId where Memberships.LastLoginDate > convert(date, getdate())">
    </asp:SqlDataSource>
    </asp:Content>

