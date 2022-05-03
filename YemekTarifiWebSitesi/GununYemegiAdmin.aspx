<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifiWebSitesi.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style24 {
            background-color: #CCCCCC;
            margin-bottom: 0px;
        }
    .auto-style14 {
        width: 100%;
    }
        .auto-style19 {
            width: 34px;
        }
        .auto-style18 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style20 {
            width: 32px;
        }
        .auto-style15 {
        height: 26px;
        width: 253px;
    }
    .auto-style16 {
        height: 26px;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style24">
        <table class="auto-style14">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="30px"  Text="+" Width="30px" OnClick="Button2_Click"/>
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="30px"  Text="-" Width="30px" OnClick="Button1_Click"/>
                    </strong></td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style16"><a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon img/choose-png-3.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
