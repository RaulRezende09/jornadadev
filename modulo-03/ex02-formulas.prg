FUNCTION AreaCirculo(nRaio)
    #define PI 3.14159
    LOCAL nArea := PI * (nRaio ^ 2)
RETURN nArea

FUNCTION Hipotenusa(nA, nB)
    LOCAL nHipotenusa := Sqrt((nA ^ 2) + (nB ^ 2))
RETURN nHipotenusa

FUNCTION IMC(nPeso, nAltura)
    LOCAL nIMC := nPeso / (nAltura ^ 2)
RETURN nIMC


FUNCTION Main()
    LOCAL nRaio := 5.0
    LOCAL nA := 3.0
    LOCAL nB := 4.0
    LOCAL nPeso := 70.0
    LOCAL nAltura := 1.75

    QOut("Area do circulo: " + Str(AreaCirculo(nRaio), 10, 2))
    QOut("Hipotenusa do triangulo retangulo: " + Str(Hipotenusa(nA, nB), 10, 2))
    QOut("Indice de Massa Corporal (IMC): " + Str(IMC(nPeso, nAltura), 10, 2))
RETURN NIL