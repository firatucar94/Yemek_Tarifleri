<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        border: 2px solid #456879;
        border-radius: 10px;
        font-size: medium;
        font-style: italic;
    }
    .auto-style3 {
        margin-left: 120px;
    }
    .auto-style4 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style5 {
        text-align: center;
        margin-left: 120px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td class="auto-style10">HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style4" Text="GÜNCELLE" Width="200px" OnClick="Button5_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
