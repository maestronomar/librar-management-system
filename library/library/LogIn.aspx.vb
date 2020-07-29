Public Class LogIn
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If txtusername.Text = "Admin" And txtpass.Text = "Admin" Then
            Response.Redirect("home.aspx")

        Else
            Response.Write("Invaled UserName/Password.....!")
        End If
    End Sub
End Class