FUNCTION Main()
    LOCAL nSalarioAtual := 2500.00
    LOCAL nNovoSalario

    // Verifica a faixa salarial e aplica o reajuste correspondente
    IF nSalarioAtual < 1000.00
        nNovoSalario := nSalarioAtual * 1.15 // Reajuste de 15%
    ELSEIF nSalarioAtual >= 1000.00 .AND. nSalarioAtual <= 2000.00
        nNovoSalario := nSalarioAtual * 1.12 // Reajuste de 12%
    ELSEIF nSalarioAtual > 2000.00 .AND. nSalarioAtual <= 4000.00
        nNovoSalario := nSalarioAtual * 1.08 // Reajuste de 8%
    ELSE
        nNovoSalario := nSalarioAtual * 1.05 // Reajuste de 5%
    ENDIF

    // Exibe o novo salário após o reajuste
    QOut("Novo salario apos o reajuste = R$" + Str(nNovoSalario, 10, 2))
RETURN NIL