<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Solicitud.aspx.vb" Inherits="DepreciacionesWeb_Proyecto_Final_.Solicitud" %>

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

        .auto-style3 {
            width: 106px;
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
        .auto-style11 {
            width: 108px;
        }
        .auto-style12 {
            width: 196px;
        }
        .auto-style13 {
            width: 290px;
        }
        .auto-style14 {
            width: 108px;
            height: 36px;
        }
        .auto-style15 {
            width: 290px;
            height: 36px;
        }
        .auto-style16 {
            height: 36px;
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
      <a class="nav-link" href="/Empleados.aspx">Agregar Activos</a>
    </li>
          <li class="nav-item active">
      <a class="nav-link" href="/Consulta.aspx">Consultar Depreciaciones</a>
    </li>
          <li class="nav-item active">
         <a class="nav-link" href="/Login.aspx">Cerrar Seción</a>
    </li>
   
  </ul>
</nav>






    <form id="form1" runat="server">
        <div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Usuario:" CssClass="etiquetas"></asp:Label>
            <asp:Label ID="LblUsuario" runat="server" Text="Label" CssClass="etiquetas"></asp:Label>
            <asp:GridView ID="GvActivos" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label3" runat="server" Text="Codigo Activo" CssClass="etiquetas"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TxtIdActivo" runat="server" Height="22px" Width="182px" CssClass="Textos"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" class="btn btn-dark"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label4" runat="server" Text="Nombre Activo" CssClass="etiquetas"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TxtNombreActivo" runat="server" Width="182px" CssClass="Textos"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="LblTipoDeActivo" runat="server" Text="Tipo de Activo" CssClass="etiquetas"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="DdlTipoActivo" runat="server" CssClass="Textos">
                            <asp:ListItem Value="1">Mobiliario y equipo de oficina</asp:ListItem>
                            <asp:ListItem Value="2">Software y equipo de cómputo</asp:ListItem>
                            <asp:ListItem Value="3">Edificios</asp:ListItem>
                            <asp:ListItem Value="4">Vehículos</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="LblAños" runat="server" Text="Años :"  CssClass="etiquetas"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAños" runat="server"  CssClass="Textos"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="LblFecha" runat="server" Text="Fecha de compra" CssClass="etiquetas"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtFecha" runat="server" Width="166px" CssClass="Textos"></asp:TextBox>
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="LblMontoCompra" runat="server" Text="Monto de compra" CssClass="etiquetas"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtMontoCompra" runat="server" Width="168px" CssClass="Textos"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Valor de desecho" CssClass="etiquetas"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtValorDesecho" runat="server" Width="167px" CssClass="Textos"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="Id del Empleado" CssClass="etiquetas"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TxtIdEmpleado" runat="server" Width="175px" CssClass="Textos"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="Lblmensaje" runat="server" CssClass="etiquetas"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="Estado" CssClass="etiquetas"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtEstado" runat="server" Width="175px" CssClass="Textos"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="IdDepreciacion" CssClass="etiquetas"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtIdDepreciacion" runat="server" Width="175px"  CssClass="Textos">1</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="BtnRealizarDepreciacion" runat="server" Text="Realizar Depreciacion" class="btn btn-dark"/>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="BtnDepreciaciones" runat="server" Text="Ver Depreciacion" class="btn btn-dark" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:GridView ID="GvDepreciaciones" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" ForeColor="Black">
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
