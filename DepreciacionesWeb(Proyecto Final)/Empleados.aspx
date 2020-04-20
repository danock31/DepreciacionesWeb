<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Empleados.aspx.vb" Inherits="DepreciacionesWeb_Proyecto_Final_.Empleados" %>

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
            width: 135px;
        }
        .auto-style2 {
            width: 100%;
            height: 91px;
        }
        .auto-style3 {
            height: 115px;
        }
        .auto-style10 {
            width: 144px;
        }
        .auto-style12 {
            width: 100%;
            height: 89px;
        }
        .auto-style13 {
            width: 289px;
        }
        .auto-style15 {
            width: 294px;
        }
        .auto-style16 {
            height: 231px;
        }
        .auto-style17 {
            width: 144px;
            height: 40px;
        }
        .auto-style18 {
            width: 289px;
            height: 40px;
        }
        .auto-style19 {
            height: 40px;
        }
    </style>
</head>
<body>
       <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="/Index.aspx">Depreciaciones Web</a>
    </li>
          <li class="nav-item active">
      <a class="nav-link" href="/Solicitud.aspx"> Solicitud de Depreciacion</a>
    </li>
                <li class="nav-item active">
      <a class="nav-link" href="/Consulta.aspx">Consultar Depreciaciones</a>
    </li>
          <li class="nav-item active">
      <a class="nav-link" href="/Login.aspx">Cerrar Seción</a>
    </li>
   
  </ul>
</nav>
    <form id="form1" runat="server" class="auto-style16">
        <div class="auto-style3">
            <asp:Label ID="Label2" runat="server" Text="Usuario:" CssClass="etiquetas"></asp:Label>
            <asp:Label ID="LblUsuario" runat="server" Text="Label" CssClass="etiquetas"></asp:Label>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LblIdActivo" runat="server" Text="Codigo de Activo" CssClass="etiquetas"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TxtIdActivo" runat="server" Width="190px" CssClass="Textos"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" class="btn btn-dark"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LblNombreActivo" runat="server" Text="Nombre del Activo" CssClass="etiquetas"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TxtNombreActivo" runat="server" Width="188px" CssClass="Textos"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LblTipoDeActivo" runat="server" Text="Tipo de Activo" CssClass="etiquetas"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="DdlTipoActivo" runat="server" CssClass="Textos">
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
                    <asp:Label ID="LblFecha" runat="server" Text="Fecha de compra" CssClass="etiquetas"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="89px" Width="122px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
                <td>
                    <asp:Button ID="BtnAgregar" runat="server" Text="Agregar"  class="btn btn-dark" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="LblMontoCompra" runat="server" Text="Monto de compra" CssClass="etiquetas"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtMontoCompra" runat="server" Width="158px" CssClass="Textos"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar"  class="btn btn-dark" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label1" runat="server" Text="Valor de desecho" CssClass="etiquetas"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtValorDesecho" runat="server" Width="158px" CssClass="Textos"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:Button ID="BtnModificar" runat="server" Text="Modificar"  class="btn btn-dark" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblEstado" runat="server" Text="Estado :" CssClass="etiquetas"></asp:Label>
                    <asp:Label ID="LblMostrarEstado" runat="server" Text="1" CssClass="etiquetas"></asp:Label>
                </td>
            </tr>
        </table>
                    <asp:Label ID="Lblmensaje" runat="server"></asp:Label>
        <p>
            <asp:Button ID="BtnActivos" runat="server" Text="Ver Activos"  class="btn btn-dark" />
            <asp:GridView ID="GvActivos" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </p>
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
