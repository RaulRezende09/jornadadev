# Exercício 1 — Conceitos fundamentais

## a. Qual é a função do AppServer?
O **AppServer** atua como o "cérebro" do Protheus. Sua função é ser o servidor que processa o código da aplicação e realiza toda a comunicação direta com o banco de dados.

## b. O que é o RPO?
O **RPO** é o repositório para onde os seus códigos fonte em ADVPL (`.prw`) são compilados. Diferente de outras linguagens que geram um arquivo executável independente (como um `.exe`), no Protheus os programas compilados ficam todos armazenados dentro desse repositório central.

## c. Para que serve o Configurador (SIGACFG)?
O **Configurador (SIGACFG)** é o "painel de controle" do sistema. Ele serve para configurar o dicionário de dados (como tornar campos obrigatórios, renomear títulos e criar campos novos) e gerenciar permissões, fazendo com que as telas se adaptem automaticamente sem a necessidade de escrever código.

## d. Qual a diferença entre campo Real e campo Virtual no SX3?
* **Campo Real:** É a informação física que é efetivamente gravada e guardada no banco de dados. 
* **Campo Virtual:** Não é salvo no banco de dados; ele é calculado ou buscado no momento da exibição em tela (usando funções como o `POSICIONE` para trazer o valor de outra tabela, por exemplo).
