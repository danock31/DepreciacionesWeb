<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Index.aspx.vb" Inherits="DepreciacionesWeb_Proyecto_Final_.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 142px;
        }
        .auto-style3 {
            width: 142px;
            height: 42px;
        }
        .auto-style5 {
            height: 42px;
        }
        .auto-style6 {
            width: 142px;
            height: 38px;
        }
        .auto-style8 {
            height: 38px;
        }
        .auto-style9 {
            width: 100%;
            height: 125px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LblUsuario" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="LblID" runat="server" Text="Label"></asp:Label>
        &nbsp;<br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="BtnAgregraActivos" runat="server" Height="26px" Text="Agregar Activos" Width="147px" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="BtnAprobarActivos" runat="server" Height="26px" Text="Aprobar Consultas" Width="145px" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="BtnAgregarEmpleado" runat="server" Height="28px" Text="Agregra Empleado" Width="155px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="BtnSolicitud" runat="server" Height="26px" Text="Solicitar Depreciacion" Width="147px" />
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
