<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 30px;
            background-color: #CCFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style4">
            <tr>
                <td class="auto-style5"><a href="YemekDetay.aspx?YemekId=<%# Eval("YemekId") %>">
                    <asp:Label ID="Label3" runat="server" BackColor="White" 
                        style="font-size: x-large; font-weight: 700; background-color: #CCFFFF" Text='<%
                        # Eval("YemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td><strong>Malzemeler :</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi :</strong>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi :</strong>&nbsp;<asp:Label ID="Label6" runat="server" style="font-weight: 700; color: #FFFFFF" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;-&nbsp;<strong><em>Puan</em></strong> :
                        <asp:Label ID="Label7" runat="server" style="font-weight: 700; font-style: italic; color: #FFFFFF" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        &nbsp;</td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #00FFFF">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
