/*Exercício 2 — Relógio digital modular
Crie um “relógio digital” que exiba a hora no formato HH:MM:SS , atualizando por ~30
segundos. Organize em funções separadas por responsabilidade:
ObterHora() — retorna a hora atual
FormatarHora(cHora) — devolve a string formatada HH:MM:SS
ExibirHora(cHora) — exibe na tela
Dica: a Main() deve apenas orquestrar (loop chamando as três funções).*/
FUNCTION ObterHora()
    LOCAL nHora, nMinuto, nSegundo

    nHora := VAL(Left( Time(), 2 ))
    nMinuto := VAL(SubStr( Time(), 4, 2 ))
    nSegundo := VAL(Right( Time(), 2 ))

RETURN {nHora, nMinuto, nSegundo} // Retorna a hora como um array

FUNCTION FormatarHora(cHora)
    LOCAL nHora, nMinuto, nSegundo
    LOCAL cHoraFormatada

    nHora := cHora[1]
    nMinuto := cHora[2]
    nSegundo := cHora[3]

    // Formata a hora no formato HH:MM:SS
    cHoraFormatada := PadL(Str(nHora), 2, "0") + ":" + PadL(Str(nMinuto), 2, "0") + ":" + PadL(Str(nSegundo), 2, "0")
RETURN cHoraFormatada

FUNCTION ExibirHora(cHora)
    // Limpa a tela e exibe a hora formatada
    hb_IdleSleep( 30 ) // Pausa de 30 segundos
    QOUT("Hora atual: " + cHora)
RETURN NIL


FUNCTION Main()
    LOCAL cHora

    // Loop principal para atualizar a hora
    WHILE .T.
        cHora := ObterHora() // Obtém a hora atual
        cHora := FormatarHora(cHora) // Formata a hora
        ExibirHora(cHora) // Exibe a hora na tela
    ENDDO
RETURN NIL

