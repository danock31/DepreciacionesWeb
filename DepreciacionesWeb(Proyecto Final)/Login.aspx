<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="DepreciacionesWeb_Proyecto_Final_.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 44%;
            height: 111px;
        }
        .auto-style4 {
            width: 81px;
        }
        .auto-style5 {
            width: 87px;
        }
        .auto-style6 {
            width: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="LblUser" runat="server" Text="Usuario:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TxtUsuario" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DepreciacionesActivosConnectionString %>" SelectCommand="consultaUsuario" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TxtUsuario" Name="usuario" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="TxtContraseña" Name="contraseña" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="LblClave" runat="server" Text="Contraseña:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TxtContraseña" runat="server" Width="146px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="BtnIniciar" runat="server" Text="Iniciar" />
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
