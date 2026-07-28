# Exercício 5 — A1_FILIAL e xFilial()

### a) Por que existe o campo A1_FILIAL na tabela SA1 e por que toda tabela precisa de um campo de filial?
O campo de filial (como o `A1_FILIAL` na tabela de Clientes ou o `ZA1_FILIAL` na nossa tabela customizada) existe porque o Protheus é um ERP preparado para gerenciar múltiplas empresas e filiais simultaneamente. 

Esse campo é obrigatório em todas as tabelas porque é ele quem define o **compartilhamento dos dados**. É por meio do campo de filial que o sistema sabe se um registro pertence exclusivamente a uma filial específica (ex: apenas a filial de São Paulo pode ver o cliente X) ou se o registro é compartilhado entre todas as filiais (o campo fica em branco e todas as unidades enxergam a mesma informação).

### b) O que a função xFilial() tem a ver com isso e o que aconteceria se a filial fosse escrita "na mão"?
A função `xFilial("NOME_DA_TABELA")` é essencial porque ela verifica de forma automática no Dicionário de Dados como a tabela está configurada (se é compartilhada ou exclusiva) e retorna a filial correta de acordo com a sessão atual do usuário logado.

**O que aconteceria se escrevêssemos "na mão"?**
Se eu fixasse a filial diretamente no código (por exemplo, "chumbando" o valor `"01"`), eu causaria graves problemas no sistema:
1. **Erro de contexto:** Se um usuário logasse na filial `"02"`, o programa continuaria lendo ou gravando dados na filial `"01"`, gerando inconsistência nas informações.
2. **Quebra do dicionário de dados:** Se a empresa decidisse mudar a configuração da tabela de "Exclusiva" para "Compartilhada" no configurador, o código manual gravaria a filial de forma errada, corrompendo a lógica do ERP. 

Usando o `xFilial()`, o código se adapta automaticamente a essas regras, tornando a aplicação dinâmica, segura e reaproveitável.
