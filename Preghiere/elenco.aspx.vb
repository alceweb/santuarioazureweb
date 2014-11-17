
Partial Class Preghi_elenco
    Inherits System.Web.UI.Page
    Protected Function FixCrLf(value As String) As String
        If String.IsNullOrEmpty(value) Then Return String.Empty
        Return value.Replace(Environment.Newline, "<br />")
    End Function
End Class
