FUNCTION Main()
    LOCAL nIdade := 30
    LOCAL nDependentes := 2
    LOCAL nValorPlano

    IF nIdade <= 25
        nValorPlano := 180
    ELSEIF nIdade >= 26 .AND. nIdade <= 40
        nValorPlano := 260
    ELSEIF nIdade >= 41 .AND. nIdade <= 60
        nValorPlano := 380
    ELSE
        nValorPlano := 520
    ENDIF

    // Adiciona o valor dos dependentes
    nValorPlano := nValorPlano + (nDependentes * 90)

    // Exibe o valor total do plano
    QOut("O valor mensal total do plano = R$" + Str(nValorPlano, 10, 2))
RETURN NIL