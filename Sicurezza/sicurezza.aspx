<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sicurezza.aspx.cs" Inherits="Sicurezza_sicurezza" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style>
        .telecamere{
            text-align:center;
        }
        .telecamere iframe{
            height:580px;
            width:770px;
           
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
       <h2>Telecamere di sicurezza</h2>
   <div class="telecamere">
     <iframe src="http://213.149.204.115:85/"></iframe>

   </div>
</asp:Content>

