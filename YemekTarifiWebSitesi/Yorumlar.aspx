<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiWebSitesi.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style13 {
            background-color: #CCCCCC;
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
    .auto-style17 {
        height: 26px;
        text-align: right;
        width: 77px;
    }
        .auto-style16 {
        height: 26px;
        text-align: right;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
        <table class="auto-style14">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="30px"  Text="+" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="30px" Text="-" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td>ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon img/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style16">
                           <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon img/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style13">
        <table class="auto-style14">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style18" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style18" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td>ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icon img/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style16">
                            <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icon img/update.png" Width="30px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    </asp:Content>
