<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Index.aspx.vb" Inherits="DepreciacionesWeb_Proyecto_Final_.Index" %>

<!DOCTYPE html>
<!DOCTYPE html>
<meta charset=”utf-8″>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href=”style/css/bootstrap.min.css” rel=”stylesheet”>
<link href="Estilos.css" rel="stylesheet" /> 



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
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="/Index.aspx">Depresiaciones Web</a>
    </li>
  </ul>
</nav>

    <form id="form1" runat="server">
        <div>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="Usuario :" CssClass="etiquetas"></asp:Label>
            <asp:Label ID="LblUsuario" runat="server" Text="Label" CssClass="etiquetas"></asp:Label>
            <asp:Label ID="LblID" runat="server" Text="Label" CssClass="etiquetas"></asp:Label>
            <br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="BtnAgregraActivos" runat="server" class="btn btn-dark"  Text="Agregar Activos" Width="176px"  />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="BtnAprobarActivos" runat="server" class="btn btn-dark" Text="Aprobar Consultas" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="BtnAgregarEmpleado" runat="server" class="btn btn-dark" Text="Agregra Empleado"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="BtnSolicitud" runat="server" class="btn btn-dark" Text="Solicitar Depreciacion" />
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Cerrar  Sesión" class="btn btn-dark" />
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
