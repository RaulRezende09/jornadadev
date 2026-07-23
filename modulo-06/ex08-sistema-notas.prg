/*Exercício 8 — Sistema de notas (array multidimensional)
Implemente um sistema de notas: - Leia o nome e 4 notas de N alunos (N definido pelo
usuário) - Armazene em um array multidimensional (cada linha: {nome, n1, n2, n3, n4} ) -
Calcule a média de cada aluno - Liste os aprovados (média ≥ 7) e os reprovados*/

FUNCTION SolicitarNotas(aAlunos, nNumAlunos)
    LOCAL cNome
    LOCAL nNota1, nNota2, nNota3, nNota4

    FOR i := 1 TO nNumAlunos
        ACCEPT "Digite o nome do aluno " + Str(i) + ": " TO cNome
        aAlunos[i][1] := cNome // Armazena o nome do aluno

        // Solicita as 4 notas do aluno
        FOR j := 1 TO 4
            ACCEPT "Digite a nota " + Str(j) + " do aluno " + cNome + ": " TO aAlunos[i][j+1]
            aAlunos[i][j+1] := Val(aAlunos[i][j+1]) // Converte para número e armazena
        NEXT
    NEXT
RETURN NIL

FUNCTION CalcularMedia(aAlunos, nNumAlunos)
    LOCAL nSoma, nMedia

    FOR i := 1 TO nNumAlunos
        nSoma := 0
        // Calcula a soma das 4 notas do aluno
        FOR j := 2 TO 5
            nSoma += aAlunos[i][j]
        NEXT
        nMedia := nSoma / 4 // Calcula a média
        aAlunos[i][6] := nMedia // Armazena a média na coluna 6
    NEXT
RETURN NIL

FUNCTION ListarResultados(aAlunos, nNumAlunos)
    QOUT("Resultados dos alunos:")
    FOR i := 1 TO nNumAlunos
        IF aAlunos[i][6] >= 7
            QOUT("Aluno:", aAlunos[i][1], "- Media:", aAlunos[i][6], "- Aprovado")
        ELSE
            QOUT("Aluno:", aAlunos[i][1], "- Media:", aAlunos[i][6], "- Reprovado")
        ENDIF
    NEXT
RETURN NIL

FUNCTION Main()
    LOCAL nNumAlunos
    LOCAL aAlunos[100][6] // Array multidimensional para armazenar até 100 alunos e suas notas

    ACCEPT "Digite o numero de alunos: " TO nNumAlunos
    nNumAlunos := Val(nNumAlunos)

    SolicitarNotas(aAlunos, nNumAlunos) // Solicita as notas dos alunos
    CalcularMedia(aAlunos, nNumAlunos) // Calcula a média de cada aluno
    ListarResultados(aAlunos, nNumAlunos) // Lista os resultados dos alunos
RETURN NIL