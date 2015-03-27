<%@ Page Title="Download documenti" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="DownloadAdmin.aspx.cs" Inherits="Admin_DownloadAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div class="float-left">
                <h1 style="color:green">Aggiungi documento</h1>
                <asp:FileUpload ID="FileUpload1" BackColor="#ccc1ba" runat="server" /><br />
                <asp:Button ID="Button1" runat="server" BackColor="green" ForeColor="white" Text="Upload" OnClick="Button1_Click" />
                <asp:Button ID="Button3" runat="server" BackColor="blue" ForeColor="white" Text="Annulla" />
                <asp:Label ID="LblUploadOk" runat="server"></asp:Label>
                <asp:Label ID="LblUploadkO" runat="server"></asp:Label>
                <hr />
                <h1 style="color:red">Cancella documento</h1>
                <asp:ListBox ID="lb1" runat="server"></asp:ListBox>
                <br />
                <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Scegli documento da eliminare" />
                <asp:Button ID="btnDelete" OnClick="btnDelete_Click"  BackColor="red" ForeColor="white" OnClientClick='return confirm("Stai cancellando il documento selezionata. Continuare?")' runat="server"  Text="Elimina" />
                <asp:Button ID="btnAnnulla" OnClick="btnAnnulla_Click" BackColor="blue" ForeColor="white" runat="server" Text="Annulla" /><br />
                <asp:Label ID="lblDeleteOk" ForeColor="red"  runat="server"></asp:Label>
                <br />
                <hr />

    </div>
    <div >
        <asp:ListView ID="ListViewNl" runat="server">
            <AlternatingItemTemplate>
                <tr>
                    <td style="background-color: #dedac7">
                        <a href='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'>'<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'</a><br />

                    </td>
                </tr>
            </AlternatingItemTemplate>
            <ItemTemplate>
                <tr>
                    <td style="background-color: #bebaa6">
                        <a href='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'>'<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'</a><br />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <th></th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server"></tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>

    </div>
</asp:Content>

