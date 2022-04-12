<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiWebSitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style13 {
        width: 100%;
    }
    .auto-style14 {
        font-size: x-large;
    }
    .auto-style15 {
        text-align: center;
    }
        .auto-style16 {
            height: 26px;
        }
        .auto-style17 {
            text-align: right;
            height: 27px;
            width: 258px;
        }
        .auto-style18 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="449px">
        <ItemTemplate>
            <table class="auto-style13">
                <tr>
                    <td class="auto-style15"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler :</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Tarif</strong> <strong>:</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Image ID="Image1" runat="server" Height="265px" Width="372px" ImageUrl="~/img/mucver.jpg" />
                    </td>
                </tr>
            </table>
            <table class="auto-style13">
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <table class="auto-style13">
                            <tr>
                                <td class="auto-style18"><strong>Puan :</strong>&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19"><strong>Eklenme Tarihi :</strong>&nbsp;<em><asp:Label ID="Label7" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                        </em></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
