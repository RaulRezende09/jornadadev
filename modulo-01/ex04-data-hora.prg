FUNCTION MAIN()
    LOCAL cNome := "Raul Rezende"
    LOCAL cCidade := "Sao Paulo"
    LOCAL cCurso := "Harbour/ADVPL"
    LOCAL cData := Date()
    LOCAL cHora := Time()

    SET DATE FORMAT TO "DD/MM/YYYY"

    QOut("=================================")
    QOut("===== FICHA DE APRESENTAÇAO =====")
    QOut("=================================")
    QOut("Nome: " + cNome)
    QOut("Cidade: " + cCidade)
    QOut("Curso: " + cCurso)
    QOut("================================")
    QOut("Data: " + DToc(cData))
    QOut("Hora: " + cHora)
RETURN NIL