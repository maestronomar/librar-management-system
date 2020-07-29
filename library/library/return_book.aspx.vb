Imports System.Data.SqlClient
Public Class _return
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=DESKTOP-CSHVGR2;Initial Catalog=library;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        cmd.CommandText = "select *from Return_book"
        cmd.Connection = cn
        cn.Open()
        cmd.Connection = cn
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "insert into Return_book values(@Book_id,@Book_name,@Author_book,@Issue_date,@Returned_On)"
        cmd.Parameters.AddWithValue("@Book_id", book_id.Text)
        cmd.Parameters.AddWithValue("@Book_name", book_name.Text)
        cmd.Parameters.AddWithValue("@Author_book", issuebook.Text)
        cmd.Parameters.AddWithValue("@Issue_date", Autherbook.Text)
        cmd.Parameters.AddWithValue("@Returned_On", returnedOn.Text)
        cmd.ExecuteNonQuery()
        cn.Close()

        GridView1.DataSource = dr
        GridView1.DataBind()
        Response.Write("saved data")
    End Sub



    Protected Sub btn0_Click(sender As Object, e As EventArgs) Handles btn0.Click

    End Sub
End Class