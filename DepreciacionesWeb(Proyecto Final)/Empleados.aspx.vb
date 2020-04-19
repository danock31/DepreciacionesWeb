Imports ClaseNegocio
Public Class Empleados
    Inherits System.Web.UI.Page
    Dim obj_activos As New Clase_Activo
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LblUsuario.Text = Session("Usuario")
        BtnEliminar.Enabled = False
        BtnModificar.Enabled = False

    End Sub

    Protected Sub BtnAgregar_Click(sender As Object, e As EventArgs) Handles BtnAgregar.Click
        Try
            obj_activos.IdActivo = TxtIdActivo.Text
            obj_activos.NombreActivo = TxtNombreActivo.Text
            obj_activos.FechaCompra = Calendar1.SelectedDate
            obj_activos.Tipo = DdlTipoActivo.SelectedValue
            obj_activos.MontoCompra = TxtMontoCompra.Text
            obj_activos.ValorDesecho = TxtValorDesecho.Text
            obj_activos.IdEmpleado = Session("IDUser")
            obj_activos.IdEstado = 1
            obj_activos.validarActivo()

            obj_activos.AgregarActivo()
        Catch ex As Exception
            Lblmensaje.Text = ex.Message
        End Try

        TxtIdActivo.Text = ""
        TxtNombreActivo.Text = ""
        DdlTipoActivo.SelectedIndex = 0
        TxtMontoCompra.Text = ""
        TxtValorDesecho.Text = ""


    End Sub

    Protected Sub BtnActivos_Click(sender As Object, e As EventArgs) Handles BtnActivos.Click

        obj_activos.LeerActivos()
        GvActivos.DataSource = obj_activos.Tabla_Activos
        GvActivos.DataBind()
    End Sub

    Protected Sub BtnModificar_Click(sender As Object, e As EventArgs) Handles BtnModificar.Click
        Try
            obj_activos.IdActivo = TxtIdActivo.Text
            obj_activos.NombreActivo = TxtNombreActivo.Text
            obj_activos.FechaCompra = Calendar1.SelectedDate
            obj_activos.Tipo = DdlTipoActivo.SelectedValue
            obj_activos.MontoCompra = TxtMontoCompra.Text
            obj_activos.ValorDesecho = TxtValorDesecho.Text
            obj_activos.IdEmpleado = Session("ID")
            obj_activos.validarActivo()

            obj_activos.ModificaActivo()
        Catch ex As Exception
            Lblmensaje.Text = ex.Message
        End Try
        TxtIdActivo.Text = ""
        TxtNombreActivo.Text = ""
        DdlTipoActivo.SelectedIndex = 0

        TxtMontoCompra.Text = ""
        TxtValorDesecho.Text = ""

    End Sub

    Protected Sub BtnBuscar_Click(sender As Object, e As EventArgs) Handles BtnBuscar.Click
        Try
            obj_activos.IdActivo = TxtIdActivo.Text
            obj_activos.BuscaActivo()
            Calendar1.SelectedDate = obj_activos.FechaCompra
            DdlTipoActivo.SelectedValue = obj_activos.Tipo
            TxtValorDesecho.Text = obj_activos.ValorDesecho
            TxtNombreActivo.Text = obj_activos.NombreActivo
            TxtMontoCompra.Text = obj_activos.MontoCompra
            obj_activos.FechaCompra = Calendar1.SelectedDate

        Catch ex As Exception
            Lblmensaje.Text = ex.Message
        End Try
        BtnModificar.Enabled = True
        BtnEliminar.Enabled = True
        Lblmensaje.Text = ""

    End Sub

    Protected Sub BtnEliminar_Click(sender As Object, e As EventArgs) Handles BtnEliminar.Click
        Try
            obj_activos.IdActivo = TxtIdActivo.Text
            obj_activos.EliminarActivo()

        Catch ex As Exception
            Lblmensaje.Text = ex.Message
        End Try
        TxtIdActivo.Text = ""
        TxtNombreActivo.Text = ""
        DdlTipoActivo.SelectedIndex = 0
        TxtMontoCompra.Text = ""
        TxtValorDesecho.Text = ""
    End Sub
End Class