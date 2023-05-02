Imports MySql.Data.MySqlClient
Public Class libros

    Sub cargardatagrid()
        Dim cstring As String
        cstring = "server=localhost;user=root;database=biblioteca;port=3306;password=CVO2023;"
        Dim conn As New MySqlConnection(cstring)
        Try
            conn.Open()
            Dim sQuery As String
            sQuery = "SELECT * FROM biblioteca.libro;"
            Dim da As New MySqlDataAdapter(sQuery, conn)
            Dim dt As New DataTable
            da.Fill(dt)
            DataGridView1.DataSource = dt
            DataGridView1.Refresh()
            conn.Close()
        Catch ex As Exception
            MessageBox.Show(ex.ToString())
        End Try
    End Sub

    Private Sub libros_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub
End Class