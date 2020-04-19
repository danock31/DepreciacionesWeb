<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Aprobador.aspx.vb" Inherits="DepreciacionesWeb_Proyecto_Final_.Aprobador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 101px;
        }
        .auto-style3 {
            width: 110px;
        }
        .auto-style5 {
            width: 102px;
        }
        .auto-style6 {
            width: 102px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
            width: 198px;
        }
        .auto-style10 {
            width: 198px;
        }
        .auto-style11 {
            width: 100%;
            height: 90px;
        }
        .auto-style12 {
            width: 155px;
        }
        .auto-style13 {
            width: 191px;
        }
        .auto-style14 {
            width: 259px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LblUser" runat="server" Text="Usuario:"></asp:Label>
            <asp:Label ID="LblUsuario" runat="server" Text="Label"></asp:Label>
            <asp:GridView ID="GvSolicitudes" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LblIdActivo" runat="server" Text="Codigo Activo"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TxtIdActivo" runat="server" Height="16px" Width="182px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" style="height: 26px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LblNombreActivo" runat="server" Text="Nombre Activo"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TxtNombreActivo" runat="server" Width="182px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LblTipoDeActivo" runat="server" Text="Tipo de Activo"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:DropDownList ID="DdlTipoActivo" runat="server">
                            <asp:ListItem Value="1">Mobiliario y equipo de oficina</asp:ListItem>
                            <asp:ListItem Value="2">Software y equipo de cómputo</asp:ListItem>
                            <asp:ListItem Value="3">Edificios</asp:ListItem>
                            <asp:ListItem Value="4">Vehículos</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="LblAños" runat="server" Text="Años :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAños" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="LblFecha" runat="server" Text="Fecha de compra"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtFecha" runat="server" Width="166px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Lblmensaje" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="LblMontoCompra" runat="server" Text="Monto de compra"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtMontoCompra" runat="server" Width="168px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="LblValorDesecho" runat="server" Text="Valor de desecho"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtValorDesecho" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="LblIDEmpleado" runat="server" Text="Id del Empleado"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TxtIdEmpleado" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="LblEstado" runat="server" Text="Estado"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtEstado" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td>
                    <asp:RadioButton ID="RbnAprovado" runat="server" Text="Aprovado" />
                    <asp:RadioButton ID="RbnDenegado" runat="server" Text="Denegado" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="IdDepreciacion"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtIdDepreciacion" runat="server" Width="175px">1</asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style11">
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Text="Ver Depreciacion" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
