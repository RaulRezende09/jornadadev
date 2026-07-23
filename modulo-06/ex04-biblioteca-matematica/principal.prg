SET PROCEDURE TO matematica.prg

FUNCTION Main()
    LOCAL nNumero, nA, nB

    // Teste da função FatorialN
    ACCEPT "Digite um numero para calcular o fatorial: " TO nNumero
    QOUT("Fatorial de", nNumero, "=", hb_ValToExp(FatorialN(Val(nNumero))))
    ?


    // Teste da função EhPrimo
    ACCEPT "Digite um numero para verificar se é primo: " TO nNumero
    IF EhPrimo(Val(nNumero))
        QOUT(nNumero, "e primo.")
    ELSE
        QOUT(nNumero, "nao e primo.")
    ENDIF
    ?

    // Teste da função MMC
    ACCEPT "Digite o primeiro numero para calcular o MMC: " TO nA
    ACCEPT "Digite o segundo numero para calcular o MMC: " TO nB
    QOUT("MMC de", nA, "e", nB, "=", MMC(Val(nA), Val(nB)))
    ?

    // Teste da função MDC
    ACCEPT "Digite o primeiro numero para calcular o MDC: " TO nA
    ACCEPT "Digite o segundo numero para calcular o MDC: " TO nB
    QOUT("MDC de", nA, "e", nB, "=", MDC(Val(nA), Val(nB)))
RETURN NIL