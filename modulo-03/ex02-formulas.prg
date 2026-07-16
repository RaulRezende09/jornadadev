FUNCTION AreaCirculo(nRaio) // Calcula a área de um círculo dado o raio
    #define PI 3.14159
    LOCAL nArea := PI * (nRaio ^ 2)
RETURN nArea

FUNCTION Hipotenusa(nA, nB) // Calcula a hipotenusa de um triângulo retângulo dado os lados nA e nB
    LOCAL nHipotenusa := Sqrt((nA ^ 2) + (nB ^ 2))
RETURN nHipotenusa

FUNCTION IMC(nPeso, nAltura) // Calcula o Índice de Massa Corporal (IMC) dado o peso e a altura
    LOCAL nIMC := nPeso / (nAltura ^ 2)
RETURN nIMC


FUNCTION Main()
    // Declaração de variáveis locais
    LOCAL nRaio := 5.0
    LOCAL nA := 3.0
    LOCAL nB := 4.0
    LOCAL nPeso := 70.0
    LOCAL nAltura := 1.75

    // Chamadas das funções e exibição dos resultados
    QOut("Area do circulo: " + Str(AreaCirculo(nRaio), 10, 2))
    QOut("Hipotenusa do triangulo retangulo: " + Str(Hipotenusa(nA, nB), 10, 2))
    QOut("Indice de Massa Corporal (IMC): " + Str(IMC(nPeso, nAltura), 10, 2))
RETURN NIL