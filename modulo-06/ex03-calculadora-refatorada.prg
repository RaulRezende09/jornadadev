/*Exercício 3 — Refatorando a calculadora
Pegue a calculadora do Módulo 4 (tudo em Main() ) e refatore usando funções separadas: -
leitura dos valores ( LerNumero ) - uma função por operação (ou uma Calcular com DO
CASE ) - exibição do resultado ( MostrarResultado )
Trate a divisão por zero devolvendo .F. da função de cálculo.
Meta: ao final, a Main() deve “se ler como uma frase”.*/

FUNCTION LerNumero(cMensagem)
    LOCAL cInput := ""
    LOCAL nValido := 0
    
    DO WHILE .T.
        ACCEPT cMensagem TO cInput
        nValido := Val(cInput)
        
        //Comparar a string de mensagem inteira, ou verifica se o valor não é zero - tava dando erro na validação de zero
        IF nValido != 0 .OR. !("não zero" $ Lower(cMensagem))
            EXIT // Número válido
        ELSE
            ? "Erro: Este número não pode ser zero. Tente novamente."
        ENDIF
    ENDDO
RETURN nValido

FUNCTION Calcular(nNum1, nNum2, cOperacao, nResultado)
    //nResultado como referência para manter o tipo numérico separado do retorno lógico - estava dando erro de tipo na comparação
    DO CASE
        CASE cOperacao == "+"
            nResultado := nNum1 + nNum2
        CASE cOperacao == "-"
            nResultado := nNum1 - nNum2
        CASE cOperacao == "*"
            nResultado := nNum1 * nNum2
        CASE cOperacao == "/"
            IF nNum2 != 0
                nResultado := nNum1 / nNum2
            ELSE
                ? "Erro: Divisão por zero."
                RETURN .F. 
            ENDIF
        OTHERWISE
            ? "Erro: Operação inválida."
            RETURN .F. 
    ENDCASE
RETURN .T.

FUNCTION MostrarResultado(nResultado)
    ? "Resultado final:", nResultado
RETURN NIL

FUNCTION Main()
    LOCAL nNum1, nNum2, nResultado := 0
    LOCAL cOperacao := ""

    ? "=== CALCULADORA REFATORADA ==="
    ?
    
    nNum1     := LerNumero("Digite o primeiro número: ")
    nNum2     := LerNumero("Digite o segundo número (não zero): ")
    
    ACCEPT "Digite a operação (+, -, *, /): " TO cOperacao

    IF Calcular( nNum1, nNum2, cOperacao, @nResultado )
        MostrarResultado( nResultado )
    ENDIF
RETURN NIL