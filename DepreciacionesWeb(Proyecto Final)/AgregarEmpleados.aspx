<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AgregarEmpleados.aspx.vb" Inherits="DepreciacionesWeb_Proyecto_Final_.AgregarEmpleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 100px;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            width: 246px;
        }
        .auto-style5 {
            width: 148px;
        }
        .auto-style7 {
            width: 100%;
            height: 110px;
        }
        .auto-style8 {
            width: 148px;
            height: 36px;
        }
        .auto-style9 {
            width: 249px;
            height: 36px;
        }
        .auto-style10 {
            height: 36px;
        }
        .auto-style11 {
            width: 249px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LblIdEmpleado" runat="server" Text="Id Empleado"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtIdEmpleado" runat="server" Width="207px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LblNombreEmpleado" runat="server" Text="Nombre Empleado"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtNombreEmpleado" runat="server" Width="205px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LblRol" runat="server" Text="Rol"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DdlRol" runat="server">
                            <asp:ListItem Value="1">Empleado</asp:ListItem>
                            <asp:ListItem Value="2">Aprobador de Depreciaciones</asp:ListItem>
                            <asp:ListItem Value="3">Administrador</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="BtnAgregar" runat="server" Text="Agregar" />
                    </td>
                </tr>
            </table>
        </div>
        <table class="auto-style7">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="LblUsuario" runat="server" Text="Usuario"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtUsuario" runat="server" Width="205px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="LblContraseña" runat="server" Text="Contraseña"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TxtContraseña" runat="server" Width="203px"></asp:TextBox>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Button ID="BtnUsuario" runat="server" Text="Crear Usuario" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
