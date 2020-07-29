Imports System.Data.SqlClient
Public Class home
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=DESKTOP-CSHVGR2;Initial Catalog=library;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cmd.CommandText = "select *from add_book"
        cmd.Connection = cn
        cn.Open()
        cmd.Connection = cn
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "insert into add_book values(@book_Id,@book_name,@edition,@Author,@Publishing_year)"
        cmd.Parameters.AddWithValue("@book_Id", txtid.Text)
        cmd.Parameters.AddWithValue("@book_name", txtname.Text)
        cmd.Parameters.AddWithValue("@edition", txtedition.Text)
        cmd.Parameters.AddWithValue("@Author", txtouther.Text)
        cmd.Parameters.AddWithValue("@Publishing_year", txtyear.Text)
        cmd.ExecuteNonQuery()
        cn.Close()

        GridView1.DataSource = dr
        GridView1.DataBind()
        Response.Write("saved data")


    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        cn.Open()
        cmd.Connection = cn
        cmd.CommandText = "Update Add_Book set book_name = @book_name,edition = @edition,Author = @Author,Publishing_year = @Publishing_year where Book_Id = @book_Id"
        cmd.Parameters.AddWithValue("@book_Id", txtid.Text)
        cmd.Parameters.AddWithValue("@book_name", txtname.Text)
        cmd.Parameters.AddWithValue("@edition", txtedition.Text)
        cmd.Parameters.AddWithValue("@Author", txtouther.Text)
        cmd.Parameters.AddWithValue("@Publishing_year", txtyear.Text)
        cmd.ExecuteNonQuery()
        cn.Close()

        GridView1.DataSource = dr
        GridView1.DataBind()
        Response.Write("updated data----!")


    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
         Dim selectrow As GridViewRow
        selectrow = GridView1.SelectedRow
        txtid.Text = selectrow.Cells(1).Text
        txtname.Text = selectrow.Cells(2).Text
        txtedition.Text = selectrow.Cells(3).Text
        txtouther.Text = selectrow.Cells(4).Text
        txtyear.Text = selectrow.Cells(5).Text


    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        cn.Open()
        cmd.Connection = cn
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "delete from Add_Book where Book_id= '" & txtid.Text & "' "

        cmd.ExecuteNonQuery()
        cn.Close()
        GridView1.DataSource = dr
        GridView1.DataBind()
        Response.Write("Record Deleted !")


    End Sub


End Class