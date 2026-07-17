FUNCTION Main()
    LOCAL nA
    LOCAL nB
    LOCAL cOperacao
    LOCAL nResultado

    // Solicita ao usuário a operação e os números
    ACCEPT "Digite a operacao (+, -, *, /, ^, R): " TO cOperacao
    ACCEPT "Digite o primeiro numero: " TO nA
    ACCEPT "Digite o segundo numero: " TO nB
    nA := Val(nA)
    nB := Val(nB)

    DO CASE
        CASE cOperacao == "+"
            cOperacao := "Soma"
            nResultado := nA + nB

        CASE cOperacao == "-"
            cOperacao := "Subtracao"
            nResultado := nA - nB
        
        CASE cOperacao == "*"
            cOperacao := "Multiplicacao"
            nResultado := nA * nB
        
        CASE cOperacao == "^"
            cOperacao := "Potencia"
            nResultado := nA ^ nB
    
        CASE cOperacao == "/"
            cOperacao := "Divisao"
            IF nB == 0
                QOut("Erro: Divisão por zero não é permitida.")
                RETURN NIL
            ELSE
                nResultado := nA / nB
            ENDIF
        
        CASE cOperacao == "R"
            cOperacao := "Raiz Quadrada"
            IF nA < 0
                QOut("Erro: Raiz quadrada de número negativo não é permitida.")
                RETURN NIL
            ELSE
                nResultado := Sqrt(nA)
            ENDIF
        
        OTHERWISE
            QOut("Erro: Operação inválida.")
            RETURN NIL
    ENDCASE

    QOut("Resultado da operacao " + cOperacao + " = " + Str(nResultado, 10, 2))
RETURN NIL