<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifiWebSitesi.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            height: 29px;
        }
        .auto-style15 {
            text-align: right;
            font-size: medium;
            width: 161px;
        }
        .auto-style16 {
            height: 29px;
            text-align: right;
            font-size: medium;
            width: 161px;
        }
        .auto-style18 {
            font-size: large;
        }
    .auto-style19 {
        font-size: medium;
    }
        .auto-style20 {
            height: 27px;
            text-align: right;
            font-size: medium;
            width: 161px;
        }
        .auto-style21 {
            height: 27px;
        }
        .auto-style22 {
            text-align: right;
            width: 161px;
        }
        .auto-style23 {
            text-align: right;
            font-size: medium;
            height: 210px;
            width: 161px;
        }
        .auto-style24 {
            height: 210px;
        }
        .auto-style25 {
            width: 161px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style13">
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Yemek Ad :</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TxtYemekAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Malzemeler :</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Tarif :</strong></td>
            <td class="auto-style24">
                <asp:TextBox ID="TxtTarif" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>Kategori :</strong></td>
            <td class="auto-style21">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Yemek Görüntü :</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style18" OnClick="BtnGuncelle_Click" Text="Güncelle" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style19" OnClick="Button1_Click" Text="Günün Yemeği Seç" Width="250px" />
            </td>
        </tr>
    </table>
</asp:Content>
