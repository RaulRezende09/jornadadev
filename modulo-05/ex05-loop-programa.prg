/*Faça uma versão do Exercício 4 que fique rodando: ao final de cada aluno, pergunte “Deseja
calcular outro? (S/N)”. Enquanto a resposta for S , processe um novo aluno; caso contrário,
encerre.
Dica: envolva tudo em um WHILE .T. e use EXIT quando a resposta não for S .*/

FUNCTION Main()
    LOCAL cNome, cDisc, cResposta
    LOCAL nNota1, nNota2, nMedia

    // Loop principal para processar alunos
    WHILE .T.
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

        // Pergunta se deseja calcular outro aluno
        ACCEPT "Deseja calcular outro? (S/N): " TO cResposta
        IF Upper(Trim(cResposta)) != "S"
            EXIT // Sai do loop principal se a resposta não for S
        ENDIF
    ENDDO
RETURN NIL