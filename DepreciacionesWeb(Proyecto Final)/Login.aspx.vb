﻿Imports System.Data
Imports System.Data.SqlClient
Public Class Login
    Inherits System.Web.UI.Page
    Dim conexion As SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Protected Sub BtnIniciar_Click(sender As Object, e As EventArgs) Handles BtnIniciar.Click
        Dim LeerDB As DataView = DirectCast(SqlDataSource1.Select(DataSourceSelectArguments.Empty), DataView)

        If TxtUsuario.Text <> "" And TxtContraseña.Text <> "" Then
            If LeerDB.Count > 0 Then
                Session("IdUser") = LeerDB(0).Item(2)
                Session("Usuario") = LeerDB(0).Item(1)
                Session("ID") = LeerDB(0).Item(0)

                Response.Redirect("Index.aspx")
            Else
                Response.Write("No existe el usuario digitado")
            End If
        Else
            Response.Write("Rellene el espacio vacio")
        End If

    End Sub
End Class