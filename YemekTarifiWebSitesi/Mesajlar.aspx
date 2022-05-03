<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiWebSitesi.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style13 {
            background-color: #CCCCCC;
        }
    .auto-style14 {
        width: 100%;
    }
        .auto-style21 {
            width: 34px;
            height: 34px;
        }
        .auto-style18 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style22 {
            width: 32px;
            height: 34px;
        }
        .auto-style23 {
            height: 34px;
        }
        .auto-style24 {
            text-align: right;
        }
        .auto-style25 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
        <table class="auto-style14">
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="30px"  Text="+" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style22"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="30px" Text="-" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style23">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style25">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style24">
                            <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon img/PinClipart.com_blank-las-vegas-sign_5321721.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
