/*Leia nome, disciplina e 2 notas de um aluno, validando cada campo com um loop de
consistência (só avança quando o valor for válido): - Nome: não pode ser vazio - Disciplina:
exatamente 3 letras maiúsculas (ex.: MAT , POR ) - Notas: cada uma entre 0 e 10
Ao final, exiba os dados e a média das duas notas.
Dica: Len(Trim(cNome)) > 0 verifica não-vazio; Len(cDisc) == 3 .AND. cDisc ==
Upper(cDisc) ajuda na disciplina.*/

FUNCTION Main()
    LOCAL cNome, cDisc
    LOCAL nNota1, nNota2, nMedia

    // Validação do nome
    DO WHILE .T.
        ACCEPT "Digite o nome do aluno: " TO cNome
        IF Len(Trim(cNome)) > 0
            EXIT // Nome válido
        ELSE
            QOUT("Nome inválido. Tente novamente.")
        ENDIF
    ENDDO

    // Validação da disciplina
    DO WHILE .T.
        ACCEPT "Digite a disciplina (3 letras maiúsculas): " TO cDisc
        IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
            EXIT // Disciplina válida
        ELSE
            QOUT("Disciplina inválida. Tente novamente.")
        ENDIF
    ENDDO

    // Validação da primeira nota
    DO WHILE .T.
        ACCEPT "Digite a primeira nota (0 a 10): " TO nNota1
        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT // Nota válida
        ELSE
            QOUT("Nota inválida. Tente novamente.")
        ENDIF
    ENDDO

    // Validação da segunda nota
    DO WHILE .T.
        ACCEPT "Digite a segunda nota (0 a 10): " TO nNota2
        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT // Nota válida
        ELSE
            QOUT("Nota inválida. Tente novamente.")
        ENDIF
    ENDDO

    // Cálculo da média das notas
    nMedia := (nNota1 + nNota2) / 2

    // Exibição dos dados e da média
    QOUT("Dados do aluno:")
    QOUT("Nome:", cNome)
    QOUT("Disciplina:", cDisc)
    QOUT("Nota 1:", nNota1)
    QOUT("Nota 2:", nNota2)
    QOUT("Média:", nMedia)
RETURN NIL