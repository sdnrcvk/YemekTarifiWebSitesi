<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifiWebSitesi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style13 {
            width: 101%;
        }
        .auto-style19 {
            background-color: #FFFFCC;
        }
        .auto-style14 {
            font-size: x-large;
        }
        .auto-style18 {
            color: #FFFFCC;
        }
        .auto-style16 {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="446px">
    <ItemTemplate>
        <table class="auto-style13">
            <tr>
                <td class="auto-style19"><strong><a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td><strong>Malzemeler</strong> <strong>: </strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Yemek Tarifi :
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Eklenme Tarihi :
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style18"></asp:Label>
                        &nbsp;- <em><strong>Puan :
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style18"></asp:Label>
                    </strong></em></td>
            </tr>
            <tr>
                <td class="auto-style16" style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #333333"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
