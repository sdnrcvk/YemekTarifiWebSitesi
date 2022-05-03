<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifiWebSitesi.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style14 {
            width: 100%;
        }
        .auto-style19 {
            text-align: right;
        }
        .auto-style20 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style21 {
            text-align: right;
            height: 29px;
        }
        .auto-style22 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14" __designer:mapid="1c1">
        <tr __designer:mapid="1c2">
            <td __designer:mapid="1c3">&nbsp;</td>
            <td __designer:mapid="1c4">&nbsp;</td>
        </tr>
        <tr __designer:mapid="1c5">
            <td class="auto-style19" __designer:mapid="1c6"><strong>Tarif</strong> <strong>Ad</strong> :</td>
            <td __designer:mapid="1c8">
                <asp:TextBox ID="TxtTarifAd" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="1ca">
            <td class="auto-style19" __designer:mapid="1cb"><strong __designer:mapid="1cc">Tarif Malzemeler :</strong></td>
            <td __designer:mapid="1cd">
                <asp:TextBox ID="TxtTarifMalzemeler" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="1cf">
            <td class="auto-style19" __designer:mapid="1d0"><strong __designer:mapid="1d1">Yapılış :</strong></td>
            <td __designer:mapid="1d2">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="1d4">
            <td __designer:mapid="1d5" class="auto-style21"><strong>Tarif Resim :</strong></td>
            <td __designer:mapid="1d6" class="auto-style22">
                <asp:FileUpload ID="TxtResim" runat="server" Width="200px" />
            </td>
        </tr>
        <tr __designer:mapid="1d9">
            <td __designer:mapid="1da" class="auto-style19"><strong>Tarif Öneren :</strong></td>
            <td __designer:mapid="1db">
                <asp:TextBox ID="TxtOneren" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="1d9">
            <td __designer:mapid="1da" class="auto-style19"><strong>Öneren Mail :</strong></td>
            <td __designer:mapid="1db">
                <asp:TextBox ID="TxtOnerenMail" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="1d9">
            <td __designer:mapid="1da" class="auto-style19"><strong>Kategori :</strong></td>
            <td __designer:mapid="1db">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr __designer:mapid="1d9">
            <td __designer:mapid="1da">&nbsp;</td>
            <td __designer:mapid="1db"><strong __designer:mapid="1d7">
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style20" Text="Onayla" Width="200px" OnClick="BtnOnayla_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
