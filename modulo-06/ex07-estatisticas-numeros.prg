/*Exercício 7 — Estatísticas de 10 números
Leia 10 números, armazene em um array e exiba: - Os números em ordem crescente (use
ASORT ) - A soma e a média - O maior e o menor (dica: após ASORT , são aV[1] e
aV[Len(aV)] )*/

FUNCTION SolicitarCalcular(aNums)
    LOCAL nSum := 0
    // Solicita ao usuário que digite 10 números
    FOR i := 1 TO 10
        ACCEPT "Digite o " + Str(i) + " numero : " TO aNums[i]
        aNums[i] := Val(aNums[i])
        nSum += aNums[i] // Acumula a soma dos números
    NEXT
RETURN nSum // Retorna a soma dos números

FUNCTION MaiorMenor(aNums) // Tem que estar em um array ordenado
    LOCAL nMenor, nMaior
    // Obtém o maior e o menor número
    nMenor := aNums[1]
    nMaior := aNums[Len(aNums)]
RETURN {nMenor, nMaior} // Retorna o menor e o maior como um array

FUNCTION ExibirOrdem(aNums) // Exibe os números em ordem crescente
    // Exibe os resultados
    ?
    QOUT("Numeros em ordem crescente:")
    FOR i := 1 TO Len(aNums)
        QOUT(aNums[i])
    NEXT
RETURN NIL // Retorna o array ordenado

FUNCTION Main()
    LOCAL aNumeros[10]
    LOCAL nSoma := 0
    LOCAL nMedia
    LOCAL aResultado

    nSoma := SolicitarCalcular(aNumeros) // Chama a função para solicitar os números e calcular a soma
    ASORT(aNumeros) // Ordena o array em ordem crescente

    // Calcula a média
    nMedia := nSoma / 10

    // Obtém o maior e o menor número
    aResultado := MaiorMenor(aNumeros)

    // Exibe os números em ordem crescente
    ExibirOrdem(aNumeros)
    ?
    QOUT("Soma:", nSoma)
    QOUT("Media:", nMedia)
    QOUT("Menor:", aResultado[1])
    QOUT("Maior:", aResultado[2])
RETURN NIL