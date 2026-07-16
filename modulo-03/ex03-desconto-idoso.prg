FUNCTION Main()
    LOCAL cNome:= "Raul Rezende"
    LOCAL dNasc := CTOD("09/19/1920")
    LOCAL nPreco := 100.0
    LOCAL nIdade := Int((Date() - dNasc) / 365)
    LOCAL nDesconto
    LOCAL nTotal

    IF nIdade > 60
        nDesconto := nPreco * 0.125
        nTotal := nPreco - nDesconto
    ELSE
        nDesconto := 0
        nTotal := nPreco
    ENDIF

    QOut("================================")
    QOut("======= RESUMO DA COMPRA =======")
    QOut("================================")
    QOut("Cliente: " + cNome)
    QOut("Idade: " + Str(nIdade))
    QOut("================================")
    QOut("Preço: " + Str(nPreco, 10, 2))
    QOut("Desconto: " + Str(nDesconto, 10, 2))
    QOut("Total: " + Str(nTotal, 10, 2))
RETURN NIL