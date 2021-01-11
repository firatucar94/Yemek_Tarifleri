<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
            font-weight: bold;
        }
        .auto-style5 {
            text-align: right;
            font-weight: bold;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Tarif Adı :</td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Malzemeler :</td>
            <td class="auto-style6" style="margin-left: 40px">
                <asp:TextBox ID="txtTarifMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Yapılışı : </td>
            <td style="margin-left: 80px">
                <asp:TextBox ID="txtTarifYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Resim :</td>
            <td style="margin-left: 80px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Tarif Öneren :</td>
            <td style="margin-left: 120px">
                <asp:TextBox ID="txtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mail Adresi : </td>
            <td style="margin-left: 120px">
                <asp:TextBox ID="txtTarifMail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin-left: 120px">
                <asp:Button ID="btnTarifOner" runat="server" BackColor="#66FFCC" Height="40px" style="font-weight: 700; font-style: italic; margin-left: 48px" Text="Tarif Öner" Width="150px" OnClick="btnTarifOner_Click" CssClass="btn" />
            </td>
        </tr>
    </table>
</asp:Content>
