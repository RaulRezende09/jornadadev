/*Exercício 5 (Desafio) — Jokenpo modular
Crie um Jokenpo (pedra, papel, tesoura) usando pelo menos 4 funções distintas:
SortearJogadaCPU() — sorteia a jogada do computador
ValidarJogada(cJogada) — valida a entrada do usuário
DefinirVencedor(cJogada1, cJogada2) — retorna quem ganhou

Main() — orquestra o jogo com um loop de partidas*/

FUNCTION SortearJogadaCPU()
    LOCAL nSorteio := Int(hb_RandomInt(2)) + 1
    DO CASE
        CASE nSorteio == 1
            RETURN "PEDRA"
        CASE nSorteio == 2
            RETURN "PAPEL"
        CASE nSorteio == 3
            RETURN "TESOURA"
    ENDCASE
RETURN NIL

FUNCTION ValidarJogada(cJogada)
    LOCAL cJogadaUpper := Upper(Trim(cJogada))
    IF cJogadaUpper == "PEDRA" .OR. cJogadaUpper == "PAPEL" .OR. cJogadaUpper == "TESOURA"
        RETURN cJogadaUpper
    ELSE
        RETURN NIL
    ENDIF
RETURN NIL

FUNCTION DefinirVencedor(cJogada1, cJogada2)
    DO CASE
        CASE cJogada1 = cJogada2
            RETURN "Empate"
        CASE (cJogada1 == "PEDRA" .AND. cJogada2 == "TESOURA") .OR. ;
               (cJogada1 == "PAPEL" .AND. cJogada2 == "PEDRA") .OR. ;
               (cJogada1 == "TESOURA" .AND. cJogada2 == "PAPEL")
            RETURN "Jogador 1 vence"
        OTHERWISE
            RETURN "Computador vence"
    ENDCASE
RETURN NIL

FUNCTION Main()
    LOCAL cJogadaUsuario, cJogadaCPU, cResultado
    LOCAL cResposta

    // Loop principal para jogar várias partidas
    WHILE .T.
        // Validação da jogada do usuário
        DO WHILE .T.
            ACCEPT "Digite sua jogada (Pedra, Papel, Tesoura): " TO cJogadaUsuario
            cJogadaUsuario := ValidarJogada(cJogadaUsuario)
            IF !Empty(cJogadaUsuario)
                EXIT // Jogada válida
            ELSE
                QOUT("Jogada inválida. Tente novamente.")
            ENDIF
        ENDDO

        // Sorteio da jogada do computador
        cJogadaCPU := SortearJogadaCPU()

        // Definição do vencedor
        cResultado := DefinirVencedor(cJogadaUsuario, cJogadaCPU)

        // Exibição dos resultados
        QOUT("Sua jogada:", cJogadaUsuario)
        QOUT("Jogada do computador:", cJogadaCPU)
        QOUT("Resultado:", cResultado)

        // Pergunta se deseja jogar novamente
        ACCEPT "Deseja jogar novamente? (S/N): " TO cResposta
        IF Upper(Trim(cResposta)) != "S"
            EXIT // Sai do loop se a resposta não for S
        ENDIF
    ENDDO
RETURN NIL