<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Solicitud.aspx.vb" Inherits="DepreciacionesWeb_Proyecto_Final_.Solicitud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 101px;
        }
        .auto-style2 {
            width: 181px;
        }
        .auto-style3 {
            width: 110px;
        }
        .auto-style4 {
            width: 190px;
        }
        .auto-style6 {
            width: 102px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
            width: 198px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style5 {
            width: 102px;
        }
        .auto-style10 {
            width: 198px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Usuario:"></asp:Label>
            <asp:Label ID="LblUsuario" runat="server" Text="Label"></asp:Label>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Codigo Activo"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TxtIdActivo" runat="server" Height="16px" Width="182px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Nombre Activo"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TxtNombreActivo" runat="server" Width="182px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LblTipoDeActivo" runat="server" Text="Tipo de Activo"></asp:Label>
                    </td>
                    <td class="auto-style2">
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
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="LblFecha" runat="server" Text="Fecha de compra"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtFecha" runat="server" Width="166px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="LblMontoCompra" runat="server" Text="Monto de compra"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtMontoCompra" runat="server" Width="168px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Valor de desecho"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtValorDesecho" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="Id del Empleado"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TxtIdEmpleado" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="Estado"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtEstado" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="LblIdSolicitud" runat="server" Text="Num Solicitud"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtSolicitud" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="BtnSolicitud" runat="server" Text="Enviar Solicitud" />
                    <asp:Label ID="Lblmensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
