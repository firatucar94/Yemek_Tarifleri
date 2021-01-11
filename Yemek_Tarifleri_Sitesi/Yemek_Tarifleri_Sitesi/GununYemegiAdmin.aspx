<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            width: 40px;
            height: 34px;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style7 {
            width: 38px;
            height: 34px;
        }
        .auto-style10 {
            height: 34px;
        }
        .auto-style2 {
        height: 23px;
        width: 271px;
    }
    .auto-style4 {
        font-size: large;
    }
        .auto-style3 {
        height: 23px;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"/>
                    </strong></td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"/>
                    </strong></td>
                <td class="auto-style10">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" style="text-align: left">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" style="text-align: left" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style3"><a href='YemekDuzenle.aspx?YemekId=<%#Eval("YemekId") %> '>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İkonlar/choose.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
