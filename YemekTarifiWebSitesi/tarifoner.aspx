<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="tarifoner.aspx.cs" Inherits="YemekTarifiWebSitesi.tarifoner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style13 {
        width: 100%;
    }
    .auto-style14 {
        height: 29px;
    }
    .auto-style15 {
        height: 29px;
        text-align: right;
    }
    .auto-style16 {
        text-align: right;
    }
    .auto-style17 {
        font-weight: bold;
        margin-left: 55px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style13">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style16">Tarif Ad :</td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">Malzemeler :</td>
        <td class="auto-style14">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">Yapılış :</td>
        <td class="auto-style14">
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">Resim :</td>
        <td class="auto-style14">
            <asp:FileUpload runat="server" Width="250px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style15">Tarif Öneren :</td>
        <td class="auto-style14">
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">Mail Adresi :</td>
        <td class="auto-style14">
            <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style14"><strong>
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#66CCFF" CssClass="auto-style17" Height="40px" Text="Tarif Öner" Width="150px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
