<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Empleados.aspx.vb" Inherits="DepreciacionesWeb_Proyecto_Final_.Empleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 135px;
        }
        .auto-style2 {
            width: 100%;
            height: 91px;
        }
        .auto-style3 {
            height: 115px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 144px;
        }
        .auto-style11 {
            height: 23px;
            width: 144px;
        }
        .auto-style12 {
            width: 100%;
            height: 89px;
        }
        .auto-style13 {
            width: 293px;
        }
        .auto-style14 {
            height: 23px;
            width: 293px;
        }
        .auto-style15 {
            width: 298px;
        }
        .auto-style16 {
            height: 207px;
        }
    </style>
</head>
<body style="height: 205px">
    <form id="form1" runat="server" class="auto-style16">
        <div class="auto-style3">
            <asp:Label ID="Label2" runat="server" Text="Usuario:"></asp:Label>
            <asp:Label ID="LblUsuario" runat="server" Text="Label"></asp:Label>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LblIdActivo" runat="server" Text="Codigo de Activo"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TxtIdActivo" runat="server" Width="190px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LblNombreActivo" runat="server" Text="Nombre del Activo"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TxtNombreActivo" runat="server" Width="188px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LblTipoDeActivo" runat="server" Text="Tipo de Activo"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="DdlTipoActivo" runat="server">
                            <asp:ListItem Value="1">Mobiliario y equipo de oficina</asp:ListItem>
                            <asp:ListItem Value="2">Software y equipo de cómputo</asp:ListItem>
                            <asp:ListItem Value="3">Edificios</asp:ListItem>
                            <asp:ListItem Value="4">Vehículos</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style12">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="LblFecha" runat="server" Text="Fecha de compra"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtFechaCompra" runat="server" Width="159px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="LblMontoCompra" runat="server" Text="Monto de compra"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TxtMontoCompra" runat="server" Width="158px"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" Text="Valor de desecho"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtValorDesecho" runat="server" Width="158px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="BtnAgregar" runat="server" Text="Agregar" />
                    <asp:Label ID="Lblmensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
