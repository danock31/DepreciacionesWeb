Public Class Index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LblUsuario.Text = Session("Usuario")

        LblID.Text = Session("ID")
        LblID.Visible = False

        If LblID.Text = 1 Then
            LblID.Text = "Empleado"
            BtnAgregraActivos.Visible = True
            BtnAprobarActivos.Visible = False
            BtnAgregarEmpleado.Visible = False
            BtnSolicitud.Visible = True
            BtnConsultas.Visible = True
        ElseIf LblID.Text = 2 Then
            LblID.Text = "Aprobador de Depreciaciones"
            BtnAgregraActivos.Visible = False
            BtnAprobarActivos.Visible = True
            BtnAgregarEmpleado.Visible = False
            BtnSolicitud.Visible = False
            BtnConsultas.Visible = False
        Else
            BtnAgregraActivos.Enabled = True
            BtnAprobarActivos.Enabled = True
            BtnAgregarEmpleado.Enabled = True
            BtnSolicitud.Enabled = True
            BtnConsultas.Enabled = True
            LblID.Text = "Administrador"
        End If


    End Sub

    Protected Sub BtnAgregraActivos_Click(sender As Object, e As EventArgs) Handles BtnAgregraActivos.Click
        Response.Redirect("Empleados.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnAprobarActivos.Click
        Response.Redirect("Aprobador.aspx")
    End Sub

    Protected Sub BtnAgregarEmpleado_Click(sender As Object, e As EventArgs) Handles BtnAgregarEmpleado.Click
        Response.Redirect("AgregarEmpleados.aspx")
    End Sub

    Protected Sub BtnSolicitud_Click1(sender As Object, e As EventArgs) Handles BtnSolicitud.Click
        Response.Redirect("Solicitud.aspx")
    End Sub

    Protected Sub BtnConsultas_Click(sender As Object, e As EventArgs) Handles BtnConsultas.Click
        Response.Redirect("Consulta.aspx")
    End Sub
End Class