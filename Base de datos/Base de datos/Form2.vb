Imports MySql.Data.MySqlClient
Public Class Form2
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim cstring As String
        cstring = "server=localhost;user=root;database=biblioteca;port=3306;password=CVO2023;"
        Dim conn As New MySqlConnection(cstring)
        Try
            Dim sQuery As String
            sQuery = "SELECT * FROM biblioteca.libro;"
            Dim da As New MySqlDataAdapter(sQuery, conn)
            Dim dt As New DataTable
            da.Fill(dt)
            DataGridView1.DataSource = dt
            DataGridView1.Refresh()
            conn.Close()



        Catch ex As Exception
            MessageBox.Show(ex.Message.ToString())
        End Try
    End Sub
End Class