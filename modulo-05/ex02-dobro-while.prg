/*Leia valores inteiros indefinidamente e, para cada um, exiba o dobro do valor lido. Pare
quando o usuário informar um valor zero ou negativo.
Dica: não dá para saber quantos serão → use WHILE . Leia um valor antes do teste ou use
WHILE .T. + EXIT .*/

FUNCTION Main()
    LOCAL valor

    // Leia valores indefinidamente
    WHILE .T.
        ACCEPT "Digite um valor inteiro (0 ou negativo para sair): " TO valor

        // Verifica se o valor é zero ou negativo
        IF valor <= 0
            EXIT // Sai do loop
        ENDIF

        // Exibe o dobro do valor lido
        QOUT ( "O dobro de", valor, "é", valor * 2 )
    ENDDO
RETURN NIL