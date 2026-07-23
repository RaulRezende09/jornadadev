/*Exercício 9 — Mini-carrinho de compras
Crie um mini-carrinho: - Array de produtos, cada item {nome, preço} - Loop para adicionar
itens ao carrinho (encerra quando o usuário quiser) - Exiba a lista de itens e o total ao final*/

FUNCTION SolicitarProduto(aCarrinho, nIndice)
    LOCAL cNome
    LOCAL nPreco

    ACCEPT "Digite o nome do produto: " TO cNome
    aCarrinho[nIndice][1] := cNome // Armazena o nome do produto

    ACCEPT "Digite o preço do produto: " TO nPreco
    aCarrinho[nIndice][2] := Val(nPreco) // Armazena o preço do produto
RETURN NIL

FUNCTION ExibirCarrinho(aCarrinho, nTotalItens)
    LOCAL nTotal := 0

    QOUT("Itens no carrinho:")
    FOR i := 1 TO nTotalItens
        QOUT("Produto:", aCarrinho[i][1], "- Preço:", aCarrinho[i][2])
        nTotal += aCarrinho[i][2] // Acumula o total
    NEXT

    QOUT("Total da compra:", nTotal)
RETURN NIL

FUNCTION Main()
    LOCAL aCarrinho[100][2] // Array para armazenar até 100 produtos
    LOCAL nTotalItens := 0
    LOCAL cResposta

    // Loop principal para adicionar produtos ao carrinho
    WHILE .T.
        nTotalItens += 1
        SolicitarProduto(aCarrinho, nTotalItens) // Solicita o produto e adiciona ao carrinho

        ACCEPT "Deseja adicionar outro produto? (S/N): " TO cResposta
        IF Upper(Trim(cResposta)) != "S"
            EXIT // Sai do loop se a resposta não for "S"
        ENDIF
    ENDDO

    ExibirCarrinho(aCarrinho, nTotalItens) // Exibe o carrinho e o total
RETURN NIL