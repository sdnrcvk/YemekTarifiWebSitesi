<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifiWebSitesi.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            height: 26px;
        }
        .auto-style15 {
            height: 29px;
        }
        .auto-style16 {
            height: 29px;
            text-align: right;
        }
        .auto-style17 {
            text-align: right;
        }
        .auto-style18 {
            height: 26px;
            text-align: right;
        }
        .auto-style19 {
            font-size: medium;
            font-weight: bold;
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
            <td class="auto-style18">KATEGORİ AD :</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">ADET :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">RESİM :</td>
            <td class="auto-style15">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style19" Text="Güncelle" Width="150px" OnClick="BtnGuncelle_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
