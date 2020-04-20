Imports ClaseNegocio

Public Class AgregarEmpleados
    Inherits System.Web.UI.Page
    Dim obj_empleados As New Clase_Activo
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            LblUsuario1.Text = Session("Usuario")
            obj_empleados.LeerEmpleados()
            GvEmpleados.DataSource = obj_empleados.Tabla_Empleados
            GvEmpleados.DataBind()
            obj_empleados.LeerUsuarios()
            GvUsuarios.DataSource = obj_empleados.Tabla_Usuarios
            GvUsuarios.DataBind()
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub BtnAgregar_Click(sender As Object, e As EventArgs) Handles BtnAgregar.Click
        Try
            obj_empleados.IdEmpleado = TxtIdEmpleado.Text
            obj_empleados.NombreActivo = TxtNombreEmpleado.Text
            obj_empleados.IdRol = DdlRol.SelectedValue
            obj_empleados.Usuario = TxtUsuario.Text
            obj_empleados.Contraseña = TxtContraseña.Text
            obj_empleados.validarEmpleado()
            obj_empleados.AgregarEmpleado()

        Catch ex As Exception
            LblMensaje.Text = ex.Message
        End Try

        TxtIdEmpleado.Text = ""
        TxtNombreEmpleado.Text = ""
    End Sub

    Protected Sub BtnUsuario_Click(sender As Object, e As EventArgs) Handles BtnUsuario.Click
        Try
            obj_empleados.Usuario = TxtUsuario.Text
            obj_empleados.Contraseña = TxtContraseña.Text
            obj_empleados.IdEmpleado = TxtIdEmpleado.Text
            obj_empleados.CrearUsuario()

        Catch ex As Exception
            LblMensaje.Text = ex.Message
        End Try
        TxtUsuario.Text = ""
        TxtContraseña.Text = ""

    End Sub


End Class