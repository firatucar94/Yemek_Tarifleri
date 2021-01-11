<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        height: 23px;
        width: 271px;
    }
    .auto-style3 {
        height: 23px;
        text-align: right;
    }
    .auto-style4 {
        font-size: large;
    }
        .auto-style6 {
            width: 40px;
            height: 34px;
        }
        .auto-style7 {
            width: 38px;
            height: 34px;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style10 {
            height: 34px;
        }
        .auto-style11 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
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
                        <td class="auto-style3">
                        <a href="Yemekler.aspx?YemekId=<%#Eval("YemekId")%>&islem=sil">    <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İkonlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style3">
                       <a href="YemekDuzenle.aspx?YemekId=<%#Eval("YemekId") %> ">    <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İkonlar/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC">
        
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"/>
                        </strong></td>
                    <td class="auto-style7"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"/>
                        </strong></td>
                    <td class="auto-style10">YEMEK&nbsp; EKLEME</td>
                </tr>
            </table>
        </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Yemek Adı : </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Malzemeler :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yemek Tarifi:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategorisi :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="btn" OnClick="Button5_Click" Text="Ekle" Width="114px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

