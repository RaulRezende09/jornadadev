FUNCTION Main()
    LOCAL nValor1, nValor2

    // Solicita ao usuário que digite dois valores
    ACCEPT "Digite o primeiro valor: " TO nValor1
    ACCEPT "Digite o segundo valor: " TO nValor2
    nValor1 := Val(nValor1)
    nValor2 := Val(nValor2)

    // Verifica se os valores são iguais
    IF nValor1 == nValor2
        QOut("Os dois valores sao iguais.")
    ELSE
        // Determina o maior e o menor valor
        IF nValor1 > nValor2
            QOut("O maior valor = " + Str(nValor1))
            QOut("O menor valor = " + Str(nValor2))
        ELSE
            QOut("O maior valor = " + Str(nValor2))
            QOut("O menor valor = " + Str(nValor1))
        ENDIF
    ENDIF
RETURN NIL