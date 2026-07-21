/*Usando FOR/NEXT , escreva um programa que: - a) Imprima os números de 1 a 100 - b)
Imprima os números de -50 a 50 - c) Imprima os números de 80 a 5 em ordem decrescente
(use STEP -1 )*/

FUNCTION Main()
    LOCAL i 

    // a) Imprima os números de 1 a 100
    FOR i = 1 TO 100
        QOUT (i)
    NEXT

    // b) Imprima os números de -50 a 50
    FOR i = -50 TO 50
        QOUT (i)
    NEXT

    // c) Imprima os números de 80 a 5 em ordem decrescente (use STEP -1)
    FOR i = 80 TO 5 STEP -1
        QOUT (i)
    NEXT
RETURN NIL