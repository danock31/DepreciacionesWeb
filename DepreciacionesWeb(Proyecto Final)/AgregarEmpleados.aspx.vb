Imports ClaseNegocio

Public Class AgregarEmpleados
    Inherits System.Web.UI.Page
    Dim obj_empleados As New Clase_Activo
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LblUsuario1.Text = Session("Usuario")

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
    End Sub

    Protected Sub BtnUsuario_Click(sender As Object, e As EventArgs) Handles BtnUsuario.Click

        obj_empleados.Usuario = TxtUsuario.Text
        obj_empleados.Contraseña = TxtContraseña.Text
        obj_empleados.IdEmpleado = TxtIdEmpleado.Text
        obj_empleados.CrearUsuario()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Index.aspx")
    End Sub
End Class