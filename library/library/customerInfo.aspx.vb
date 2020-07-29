Imports System.Data.SqlClient
Public Class cusmomer
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=DESKTOP-CSHVGR2;Initial Catalog=library;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cmd.CommandText = "select *from customer_info"
        cmd.Connection = cn
        cn.Open()
        cmd.Connection = cn
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "insert into customer_info values(@customer_id,@C_name,@addres,@tell)"
        cmd.Parameters.AddWithValue("@customer_id", txtid.Text)
        cmd.Parameters.AddWithValue("@C_name", txtname.Text)
        cmd.Parameters.AddWithValue("@addres", txtaddress.Text)
        cmd.Parameters.AddWithValue("@tell", txttell.Text)
        cmd.ExecuteNonQuery()
        cn.Close()

        GridView1.DataSource = dr
        GridView1.DataBind()
        Response.Write("saved data.....!")
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim selectrow As GridViewRow
        selectrow = GridView1.SelectedRow
        txtid.Text = selectrow.Cells(1).Text
        txtname.Text = selectrow.Cells(2).Text
        txtaddress.Text = selectrow.Cells(3).Text
        txttell.Text = selectrow.Cells(4).Text

    End Sub

    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs)

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        cn.Open()
        cmd.Connection = cn
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "delete from customer_info where customer_id= '" & txtid.Text & "' "

        cmd.ExecuteNonQuery()
        cn.Close()
        GridView1.DataSource = dr
        GridView1.DataBind()
        Response.Write("Record Deleted !")
    End Sub
End Class