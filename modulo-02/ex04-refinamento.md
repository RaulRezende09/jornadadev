### Exercício 4 — Refinamento Sucessivo

**Problema:** Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o subtotal, aplicar desconto se o cliente tiver cartão fidelidade (**5%**) e mostrar o total a pagar.

#### Nível 1: Visão Geral

1. Registrar os itens da compra.
2. Calcular o subtotal.
3. Verificar cartão fidelidade e aplicar desconto.
4. Mostrar o total a pagar.

---

#### Nível 2: Detalhamento

**1. Registrar os itens da compra:**
   * 1.1. Iniciar uma nova compra.
   * 1.2. Ler o código (ou nome) do produto e a quantidade.
   * 1.3. Buscar o preço unitário do produto.
   * 1.4. Adicionar o valor do item (preço unitário × quantidade) a uma lista ou acumulador.
   * 1.5. Repetir os passos 1.2 a 1.4 até que todos os itens tenham sido passados no caixa.

**2. Calcular o subtotal:**
   * 2.1. Confirmar o fim do registro de itens.
   * 2.2. Somar o valor de todos os itens registrados para obter o **Subtotal**.

**3. Verificar cartão fidelidade e aplicar desconto:**
   * 3.1. Perguntar ao cliente se ele possui o cartão fidelidade.
   * 3.2. **Se sim:**
     * Calcular o valor do desconto: `Desconto = Subtotal * 0.05`.
     * Calcular o total: `Total = Subtotal - Desconto`.
   * 3.3. **Se não:**
     * O total recebe o valor integral: `Total = Subtotal`.

**4. Mostrar o total a pagar:**
   * 4.1. Exibir na tela o valor do Subtotal.
   * 4.2. Exibir o valor do Desconto (se aplicado).
   * 4.3. Exibir o **Total Final** que o cliente deve pagar.