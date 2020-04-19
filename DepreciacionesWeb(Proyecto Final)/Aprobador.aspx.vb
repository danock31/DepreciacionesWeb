Imports ClaseNegocio
Public Class Aprobador
    Inherits System.Web.UI.Page
    Dim obj_activos As New Clase_Activo
    Dim fecha As Date
    Dim Año As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LblUsuario.Text = Session("Usuario")
        TxtEstado.Enabled = False
        TxtMontoCompra.Enabled = False
        TxtIdEmpleado.Enabled = False
        TxtValorDesecho.Enabled = False
        TxtNombreActivo.Enabled = False
        DdlTipoActivo.Enabled = False
        TxtFecha.Enabled = False


        obj_activos.LeerSolicitudes()
        GvSolicitudes.DataSource = obj_activos.Tabla_Solicitudes
        GvSolicitudes.DataBind()

    End Sub

    Protected Sub BtnBuscar_Click(sender As Object, e As EventArgs) Handles BtnBuscar.Click
        Try

            obj_activos.IdActivo = TxtIdActivo.Text
            obj_activos.BuscaActivo()
            DdlTipoActivo.SelectedValue = obj_activos.Tipo
            TxtValorDesecho.Text = obj_activos.ValorDesecho
            TxtNombreActivo.Text = obj_activos.NombreActivo
            TxtMontoCompra.Text = obj_activos.MontoCompra
            TxtIdEmpleado.Text = obj_activos.IdEmpleado
            TxtEstado.Text = obj_activos.IdEstado
            TxtFecha.Text = obj_activos.FechaCompra
            fecha = TxtFecha.Text
            Año = fecha.Year
            Año = TxtFecha.Text


            If RbnAprovado.Checked = True Then
                TxtEstado.Text = 2
                obj_activos.IdEstado = TxtEstado.Text
                obj_activos.IdActivo = TxtIdActivo.Text
                obj_activos.ModificaEstado()
                RbnAprovado.Checked = False
            End If

            If RbnDenegado.Checked = True Then
                TxtEstado.Text = 3
                obj_activos.IdEstado = TxtEstado.Text
                obj_activos.IdActivo = TxtIdActivo.Text
                obj_activos.ModificaEstado()
                RbnDenegado.Checked = False

            End If



            If TxtEstado.Text = 1 Then
                TxtEstado.Text = "Pendiente"

            ElseIf TxtEstado.Text = 2 Then
                TxtEstado.Text = "Aprovado"
            Else
                TxtEstado.Text = "Denegado"
            End If
        Catch ex As Exception
            Lblmensaje.Text = ex.Message
        End Try
    End Sub

End Class