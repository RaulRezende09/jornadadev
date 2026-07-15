FUNCTION MAIN()
    LOCAL nValor := 250
    LOCAL nDesconto := 0
    LOCAL nTotal

    if nValor > 100 
        nDesconto := nValor * 0.10
    endif

    nTotal := nValor - nDesconto
    QOut("Total: " + str(nTotal))
RETURN NIL