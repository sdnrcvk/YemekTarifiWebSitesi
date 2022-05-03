<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifiWebSitesi.HakkimizdaAdmin" %>
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
        .auto-style22 {
            font-size: medium;
            font-style: italic;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
        <table class="auto-style14">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="30px" Text="+" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="30px" Text="-" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <em>
        <asp:TextBox ID="TxtMetin" runat="server" CssClass="auto-style22" Height="200px" TextMode="MultiLine" Width="447px"></asp:TextBox>
        </em><strong>
        <asp:Button ID="Button3" runat="server" CssClass="auto-style18" Text="Güncelle" Width="200px" OnClick="Button3_Click" />
        </strong>
    </asp:Panel>
</asp:Content>
