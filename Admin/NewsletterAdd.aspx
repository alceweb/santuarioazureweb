<%@ Page Title="Inserimento newsletter" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewsletterAdd.aspx.cs" Inherits="Admin_NewsletterAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
       <div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id" InsertItemPosition="FirstItem" >
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
                                                align: "BL",
                                                electric: false,
                                                singleClick: true,
                                                displayArea: ".siblings('.dtcDisplayArea')",
                                                button: ".next()"
                                            });
                                        });
                                    </script>
                            <span style="">Data<br />
                            <asp:TextBox ID="DataTextBox" class="Calender" runat="server" Text='<%# Bind("Data") %>' /><img src="../Images/calender.png" />
                            <br />
                            Titolo<br />
                            <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                            <asp:Button ID="InsertButton" runat="server" CssClass="buttonnl" BackColor="Green" ForeColor="white" Font-Size="12px" CommandName="Insert" Text="Inserisci" />
                            <asp:Button ID="Button1" runat="server" Text="Cancella" CssClass="buttonnl" BackColor="Red" ForeColor="white" Font-Size="12px" CommandName="Cancel" />
                            <br />
                                <CKEditor:CKEditorControl ID="NLEditor" BasePath="~/ckeditor" runat="server" Text='<%# Bind("Testo") %>' UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                            <br />
                            </span>
            </InsertItemTemplate>
            <AlternatingItemTemplate>
                <div class="tbl3" style="background-color:rgba(176, 161, 182, 0.94)">
                        <asp:Label ID="Label1" runat="server" Font-Bold="true" Text='<%# Eval("Data", "{0:dd MMM yyyy}") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Titolo") %>'></asp:Label>
                </div>
            </AlternatingItemTemplate>
            <ItemTemplate>
                <div style="background-color:rgba(176, 161, 152, 0.60)">
                        <asp:Label ID="Label1" runat="server" Font-Bold="true" Text='<%# Eval("Data", "{0:dd MMM yyyy}") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Titolo") %>'></asp:Label>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" >
                    <div runat="server" id="itemPlaceholder" />
                </div>

                <div style=""><h5></h5>
                        <asp:DataPager ID="DataPager1" runat="server" >
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="<<" LastPageText="Ultimo" NextPageText=">>" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="<<" LastPageText=">>" />
                            </Fields>
                        </asp:DataPager>
                </div>
            </LayoutTemplate>
        </asp:ListView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
           DeleteCommand="DELETE FROM [NewsLetter] WHERE [Id] = @Id" 
           InsertCommand="INSERT INTO [NewsLetter] ([Data], [Titolo], [Testo]) VALUES (@Data, @Titolo, @Testo)" 
           SelectCommand="SELECT * FROM [NewsLetter] Order by [Id] desc" 
           UpdateCommand="UPDATE [NewsLetter] SET [Data] = @Data, [Titolo] = @Titolo, [Testo] = @Testo WHERE [Id] = @Id">
           <DeleteParameters>
               <asp:Parameter Name="Id" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter DbType="Date" Name="Data" />
               <asp:Parameter Name="Titolo" Type="String" />
               <asp:Parameter Name="Testo" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter DbType="Date" Name="Data" />
               <asp:Parameter Name="Titolo" Type="String" />
               <asp:Parameter Name="Testo" Type="String" />
               <asp:Parameter Name="Id" Type="Int32" />
           </UpdateParameters>
    </asp:SqlDataSource>

    </div>
<div >
</div>
</asp:Content>

