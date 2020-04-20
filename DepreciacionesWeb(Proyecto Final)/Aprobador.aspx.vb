Imports ClaseNegocio
Public Class Aprobador
    Inherits System.Web.UI.Page
    Dim obj_activos As New Clase_Activo
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
        TxtAños.Enabled = False
        BtnRealizarDepreciacion.Visible = False

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
            TxtFecha.Text = Año
            obj_activos.Annos = Año


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
                BtnRealizarDepreciacion.Visible = False

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

    Protected Sub RbnAprovado_CheckedChanged(sender As Object, e As EventArgs) Handles RbnAprovado.CheckedChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnDepreciaciones.Click
        obj_activos.LeerDepreciacionones()
        GvDepreciaciones.DataSource = obj_activos.Tabla_Depreciaciones
        GvDepreciaciones.DataBind()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles BtnRealizarDepreciacion.Click
        If TxtEstado.Text = "Aprobado" Then
            TxtEstado.Text = 2
            obj_activos.IdEstado = TxtEstado.Text
        ElseIf TxtEstado.Text = "Denegado" Then
            TxtEstado.Text = 3
            obj_activos.IdEstado = TxtEstado.Text
        End If
        obj_activos.IdDepreciacion = TxtIdDepreciacion.Text
        obj_activos.Año = TxtAños.Text
            obj_activos.CalcularDepreciacion()
    End Sub
End Class