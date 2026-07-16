FUNCTION Main()
    // Declaração de variáveis
    LOCAL nNota1, nNota2, nNota3, nNota4
    LOCAL nMediaPonderada

    // Atribuição de valores às notas
    nNota1 := 7.5
    nNota2 := 8.0
    nNota3 := 9.0
    nNota4 := 10.0

    // Cálculo da média ponderada
    nMediaPonderada := (nNota1 * 1 + nNota2 * 2 + nNota3 * 3 + nNota4 * 4) / (1 + 2 + 3 + 4)
    // Exibição do resultado
    QOut("Media ponderada: " + Str(nMediaPonderada, 10, 2))
RETURN NIL