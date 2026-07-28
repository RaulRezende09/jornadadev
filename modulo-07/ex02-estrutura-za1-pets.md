# Exercício 2 — A tabela ZA1 (Pets)

### a) Campos da tabela
Para a criação desta tabela, identifiquei a necessidade dos campos de filial, nome do pet, raça e data de nascimento. Como os tamanhos específicos não foram detalhados, estipulei a seguinte estrutura para a criação no dicionário de dados:

| Campo | Descrição | Tipo | Tamanho |
| :--- | :--- | :--- | :--- |
| **ZA1_FILIAL** | Filial do sistema | Caractere | 2 |
| **ZA1_NOME** | Nome do pet | Caractere | 40 |
| **ZA1_RACA** | Raça do pet | Caractere | 30 |
| **ZA1_NASC** | Data de nascimento| Data | 8 |

*Observação:* Incluí o campo `ZA1_FILIAL` por ser um campo obrigatório no padrão Protheus, necessário para identificar a qual filial cada registro pertence.

### b) Índice da tabela
Para o índice principal da tabela, defini a seguinte chave:
`ZA1_FILIAL + ZA1_NOME`

Optei por essa estrutura porque ela organiza os registros primeiramente pela filial e, em seguida, pelo nome do pet. A justificativa segue a **analogia de uma lista telefônica**: ao indexar os dados dessa forma, o sistema consegue localizar os registros de forma ordenada e com muito mais velocidade e performance, ao invés de ler linha por linha aleatoriamente.

### c) Por que o prefixo da tabela é "Z"?
Utilizei o prefixo **Z** na criação da tabela porque, na convenção do Protheus, as tabelas iniciadas com essa letra são reservadas exclusivamente para customizações feitas pelo cliente. Seguir essa regra é fundamental para evitar que a nossa tabela customizada entre em conflito com as tabelas padrão da TOTVS durante atualizações do sistema.

### d) Por que os campos começam com "ZA1_"?
Nomeei todos os campos iniciando com **ZA1_** para obedecer à convenção do dicionário de dados do Protheus. Utilizar o identificador da tabela como prefixo dos campos garante que cada um deles fique claramente vinculado à tabela a que pertence, mantendo a integridade do ERP e evitando nomes de campos "soltos" ou repetidos no banco de dados.
