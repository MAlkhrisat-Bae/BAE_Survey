Public Class _Default
    Inherits System.Web.UI.Page
    Protected Overrides Sub InitializeCulture()
        If Request.Form("DropDownList1") IsNot Nothing Then
            UICulture = Request.Form("DropDownList1")
            Culture = Request.Form("DropDownList1")
        End If
        MyBase.InitializeCulture()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Not UICulture = "English (United States)" Then
            'Label21.Text = "شكرا لمساعدتك"
            Response.Redirect("~/Survey_page.aspx?u_c=" + Request.Form("DropDownList1") + "&c_v=" + Request.Form("DropDownList1"))
            'Page.SetFocus(Button1.ClientID)
        Else
            Label21.Text = "Thank you to help us"
            Response.Redirect("~/Survey_page.aspx?u_c=" + Request.Form("DropDownList1") + "&c_v=" + Request.Form("DropDownList1"))
            'Page.SetFocus(Button1.ClientID)
        End If
        'Response.Redirect("/Survey_page.aspx")
    End Sub
End Class