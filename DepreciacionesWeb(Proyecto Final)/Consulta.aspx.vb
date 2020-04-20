Imports ClaseNegocio
Public Class Consulta
    Inherits System.Web.UI.Page
    Dim obj_activos As New Clase_Activo
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnBuscar_Click(sender As Object, e As EventArgs) Handles BtnBuscar.Click


        obj_activos.Fecha = TxtBuscador.Text
        obj_activos.BuscarDepreciaciones()
        GvDepreciaciones.DataSource = obj_activos.Tabla_Depreciaciones
        GvDepreciaciones.DataBind()
    End Sub
End Class