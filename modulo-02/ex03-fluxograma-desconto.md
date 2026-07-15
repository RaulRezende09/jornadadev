### Exercício 3 — Fluxograma

**Problema:** Uma loja dá desconto de **10%** para compras acima de R$ 100. Leia o valor da compra e mostre o valor final a pagar.

**Solução:**

```mermaid
flowchart TD
    Inicio([Início]) --> LerValor[/Ler valor da compra/]
    LerValor --> Decisao{Valor > 100?}
    
    Decisao -- Sim --> ComDesconto[Valor Final = Valor - Valor * 0.10]
    Decisao -- Não --> SemDesconto[Valor Final = Valor]
    
    ComDesconto --> MostrarValor[/Mostrar Valor Final/]
    SemDesconto --> MostrarValor
    
    MostrarValor --> Fim([Fim])