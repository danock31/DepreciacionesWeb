Public Class Index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LblUsuario.Text = Session("Usuario")

        LblID.Text = Session("ID")

        If LblID.Text = 1 Then
            LblID.Text = "Empleado"
            Response.Redirect("Empleados.aspx")

        ElseIf LblID.Text = 2 Then
            LblID.Text = "Aprobador de Depreciaciones"
        Else
            LblID.Text = "Administrador"
        End If


    End Sub

End Class