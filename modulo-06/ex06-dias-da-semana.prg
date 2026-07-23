/*Exercício 6 — Dias da semana por índice
Crie um programa que: - Defina um array literal com os 7 dias da semana - Leia um número de
1 a 7 e exiba o nome do dia correspondente - Valide se o número está no intervalo (senão,
avise o usuário)
Lembre: aDias[1] é o primeiro dia (índice começa em 1).*/

FUNCTION Main()
    LOCAL aDias := {"DOMINGO", "SEGUNDA", "TERÇA", "QUARTA", "QUINTA", "SEXTA", "SABADO"}
    LOCAL nIndice

    ACCEPT "Digite um nUmero de 1 a 7: " TO nIndice

    IF val(nIndice) >= 1 .AND. val(nIndice) <= 7
        QOUT("O dia correspondente e:", aDias[val(nIndice)])
    ELSE
        QOUT("Numero invalido. Digite um número de 1 a 7.")
    ENDIF
RETURN NIL