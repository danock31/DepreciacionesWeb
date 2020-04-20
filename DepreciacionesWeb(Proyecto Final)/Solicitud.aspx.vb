Imports ClaseNegocio
Public Class Solicitud
    Inherits System.Web.UI.Page
    Dim obj_activos As New Clase_Activo
    Dim estado As Integer
    Dim fecha As Date
    Dim Año As String
    Dim cont As Integer = 1
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
            fecha = TxtFecha.Text
            TxtFecha.Text = fecha.Year
            Año = TxtFecha.Text
            obj_activos.Annos = Año


            If DdlTipoActivo.SelectedValue = 1 Then
                TxtAños.Text = 10
            ElseIf DdlTipoActivo.SelectedValue = 2 Then
                TxtAños.Text = 3
            ElseIf DdlTipoActivo.SelectedValue = 3 Then
                TxtAños.Text = 20
            Else
                TxtAños.Text = 7
            End If




            If TxtEstado.Text = 1 Then
                TxtEstado.Text = "Pendiente"
                BtnRealizarDepreciacion.Visible = True

            ElseIf TxtEstado.Text = 2 Then
                TxtEstado.Text = "Aprobado"
                BtnRealizarDepreciacion.Visible = True
            Else
                TxtEstado.Text = "Denegado"
                BtnRealizarDepreciacion.Visible = True
            End If
        Catch ex As Exception
            Lblmensaje.Text = ex.Message
        End Try
    End Sub
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles BtnRealizarDepreciacion.Click
        If TxtEstado.Text = "Aprobado" Then
            TxtEstado.Text = 2
            obj_activos.IdEstado = TxtEstado.Text
        ElseIf TxtEstado.Text = "Denegado" Then
            TxtEstado.Text = 3
            obj_activos.IdEstado = TxtEstado.Text
        Else
            TxtEstado.Text = 1
            obj_activos.IdEstado = TxtEstado.Text
        End If
        obj_activos.Fecha = TxtFecha.Text
        obj_activos.ValorDesecho = TxtValorDesecho.Text
        obj_activos.MontoCompra = TxtMontoCompra.Text
        obj_activos.IdActivo = TxtIdActivo.Text
        obj_activos.IdDepreciacion = TxtIdDepreciacion.Text
        obj_activos.Año = TxtAños.Text
        obj_activos.CalcularDepreciacion()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnDepreciaciones.Click
        obj_activos.LeerDepreciacionones()
        GvDepreciaciones.DataSource = obj_activos.Tabla_Depreciaciones
        GvDepreciaciones.DataBind()
    End Sub

End Class