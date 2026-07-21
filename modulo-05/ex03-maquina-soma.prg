/*Leia valores do usuário até que o valor 0 seja digitado. Ao final, mostre: - A soma total dos
valores - A quantidade de valores somados (não conte o 0 final)
Dica: você precisa de um acumulador ( nTotal ) e um contador ( nQtd ), ambos inicializados
antes do loop.*/

FUNCTION Main()
    LOCAL nValor, nTotal := 0, nQtd := 0

    // Loop para ler valores do usuário
    WHILE .T.
        ACCEPT "Digite um valor inteiro (0 para sair): " TO nValor

        // Verifica se o valor é zero
        IF nValor == 0
            EXIT // Sai do loop
        ENDIF

        // Atualiza o acumulador e o contador
        nTotal := nTotal + nValor
        nQtd := nQtd + 1
    ENDDO

    // Exibe os resultados
    QOUT("A soma total dos valores é:", nTotal)
    QOUT("A quantidade de valores somados é:", nQtd)
RETURN NIL