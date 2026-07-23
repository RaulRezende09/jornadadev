/*FatorialN(nN) — calcula o fatorial de N
EhPrimo(nN) — retorna .T. se N é primo
MMC(nA, nB) — mínimo múltiplo comum
MDC(nA, nB) — máximo divisor comum*/

FUNCTION FatorialN( n )
    LOCAL nFatorial := 1
    LOCAL i

    IF n < 0
        RETURN NIL // Fatorial não definido para números negativos
    ENDIF

    FOR i := 2 TO n
        nFatorial *= i
    NEXT
RETURN nFatorial


FUNCTION EhPrimo(nN)
    LOCAL i

    IF nN < 2
        RETURN .F. // Números menores que 2 não são primos
    ENDIF

    FOR i := 2 TO Sqrt(nN)
        IF nN % i == 0
            RETURN .F. // Encontrou um divisor, não é primo
        ENDIF
    NEXT
RETURN .T. // É primo

FUNCTION MMC(nA, nB)
    LOCAL nMaior := IIF(nA > nB, nA, nB)
    LOCAL nMMC := nMaior

    WHILE (nMMC % nA != 0) .OR. (nMMC % nB != 0)
        nMMC += nMaior
    ENDDO
RETURN nMMC

FUNCTION MDC(nA, nB)
    LOCAL i
    LOCAL nMaior := IIF(nA > nB, nA, nB)
    LOCAL nMDC := 1

    FOR i := 2 TO nMaior
        WHILE (nA % i == 0) .AND. (nB % i == 0)
            nMDC *= i
            nA /= i
            nB /= i
        ENDDO
    NEXT
RETURN nMDC