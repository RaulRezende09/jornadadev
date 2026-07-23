/*Exercício 10 (Desafio) — Bubble Sort na mão
Implemente o Bubble Sort manualmente, sem usar ASORT : - Crie uma função
BubbleSort(aVetor) que ordene o array em ordem crescente - Teste com um array de 10
números (aleatórios ou digitados)
Dica: dois loops encaixados; troque elementos vizinhos fora de ordem usando uma variável
temporária.*/

FUNCTION BubbleSort(aVetor)
    LOCAL i, j
    LOCAL nTemp, nTamanho, bTroca
    nTamanho := Len(aVetor)

    // Loop externo para percorrer o array
    FOR i := 1 TO nTamanho - 1
        bTroca := .F. // Inicializa a flag de troca como falsa

        // Loop interno para comparar elementos vizinhos
        FOR j := 1 TO nTamanho - i
            IF aVetor[j] > aVetor[j + 1]
                // Troca os elementos fora de ordem usando uma variável temporária
                nTemp := aVetor[j]
                aVetor[j] := aVetor[j + 1]
                aVetor[j + 1] := nTemp
                bTroca := .T. // Marca que houve uma troca
            ENDIF
        NEXT

        // Se não houve troca, o array já está ordenado
        IF !bTroca
            EXIT
        ENDIF
    NEXT
RETURN aVetor // Retorna o array ordenado

FUNCTION Main()
    LOCAL aNumeros[10]
    LOCAL i

    // Solicita ao usuário que digite 10 números
    FOR i := 1 TO 10
        ACCEPT "Digite o " + Str(i) + " numero: " TO aNumeros[i]
        aNumeros[i] := Val(aNumeros[i]) // Converte para número e armazena
    NEXT

    // Chama a função BubbleSort para ordenar o array
    aNumeros := BubbleSort(aNumeros)

    // Exibe os números em ordem crescente
    QOUT("Numeros em ordem crescente:")
    FOR i := 1 TO Len(aNumeros)
        QOUT(aNumeros[i])
    NEXT
RETURN NIL