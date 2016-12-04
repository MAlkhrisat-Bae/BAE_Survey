Public Class Thanks_Page
    Inherits System.Web.UI.Page
    Protected Overrides Sub InitializeCulture()
        Try
            UICulture = Request.Params("u_c").Trim
            Culture = Request.Params("c_v").Trim
        Catch ex As Exception

        End Try
       

        MyBase.InitializeCulture()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Request.Params("con_status").Trim = "True" Then
                Label2.Visible = True
            End If
        Catch ex As Exception

        End Try
      
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton1.Click

    End Sub
End Class