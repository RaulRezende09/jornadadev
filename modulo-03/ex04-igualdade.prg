FUNCTION Main()
    // Declaração de variáveis
    LOCAL cString1 := "Harbour"
    LOCAL cString2 := "Harb"
    LOCAL lIgualdade
    LOCAL cDiferenca

    // Comparando strings com operadores de igualdade
    QOut("Comparando as strings: " + cString1 + " e " + cString2)
    QOut("")

    lIgualdade := cString1 == cString2
    IF lIgualdade
        QOut("cString1 == cString2: " + "True")
    ELSE
        QOut("cString1 == cString2: " + "False")
    ENDIF
    
    cDiferenca := cString1 = cString2
    IF cDiferenca
        QOut("cString1 = cString2: " + "True")
    ELSE
        QOut("cString1 = cString2: " + "False")
    ENDIF
RETURN NIL