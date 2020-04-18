Imports ClaseNegocio
Public Class Empleados
    Inherits System.Web.UI.Page
    Dim obj_activos As New Clase_Activo
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LblUsuario.Text = Session("Usuario")

    End Sub

    Protected Sub BtnAgregar_Click(sender As Object, e As EventArgs) Handles BtnAgregar.Click
        Try
            obj_activos.IdActivo = TxtIdActivo.Text
            obj_activos.NombreActivo = TxtNombreActivo.Text
            obj_activos.FechaCompra = TxtFechaCompra.Text
            obj_activos.Tipo = DdlTipoActivo.SelectedValue
            obj_activos.MontoCompra = TxtMontoCompra.Text
            obj_activos.ValorDesecho = TxtValorDesecho.Text
            obj_activos.IdEmpleado = Session("ID")
            obj_activos.validarActivo()

            obj_activos.AgregarActivo()
        Catch ex As Exception
            Lblmensaje.Text = ex.Message
        End Try

        TxtIdActivo.Text = ""
        TxtNombreActivo.Text = ""
        TxtFechaCompra.Text = ""
        TxtMontoCompra.Text = ""
        TxtValorDesecho.Text = ""

    End Sub

    Protected Sub BtnActivos_Click(sender As Object, e As EventArgs) Handles BtnActivos.Click
        obj_activos.LeerActivos()
        GvActivos.DataSource = obj_activos.Tabla_Activos
        GvActivos.DataBind()
    End Sub
End Class