Imports ClaseNegocio
Public Class Solicitud
    Inherits System.Web.UI.Page
    Dim obj_activos As New Clase_Activo
    Dim estado As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LblUsuario.Text = Session("Usuario")

        TxtEstado.Enabled = False
        TxtMontoCompra.Enabled = False
        TxtIdEmpleado.Enabled = False
        TxtValorDesecho.Enabled = False
        TxtNombreActivo.Enabled = False
        DdlTipoActivo.Enabled = False
        TxtFecha.Enabled = False
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

            'If estado = 1 Then
            '    TxtEstado.Text = "Pendiente"

            'ElseIf estado = 2 Then

            '    TxtEstado.Text = "Aprovado"
            'Else
            '    TxtEstado.Text = "Denegado"
            'End If

        Catch ex As Exception
            Lblmensaje.Text = ex.Message
        End Try
    End Sub

    Protected Sub BtnSolicitud_Click(sender As Object, e As EventArgs) Handles BtnSolicitud.Click
        Try

            obj_activos.IdSolicitud = TxtSolicitud.Text
            obj_activos.IdActivo = TxtIdActivo.Text
            obj_activos.IdEstado = TxtEstado.Text
            obj_activos.AgregarSolicitud()

        Catch ex As Exception
            Lblmensaje.Text = ex.Message
        End Try
    End Sub
End Class