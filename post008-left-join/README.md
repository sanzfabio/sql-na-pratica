# SQL na Prática #008 — Cláusula LEFT JOIN 🎯 

Seja bem-vindo ao repositório de códigos práticos do **Episódio #008**. Neste laboratório, vamos dominar a cláusula `LEFT JOIN`, entender como o banco de dados lida com a ausência de dados (`NULL`) e criar uma rotina de auditoria para identificar falhas operacionais.

---

## 🗂️ Entendendo a Mecânica Oculta: A Mesa de Comando

Se o `INNER JOIN` funciona como peças de Lego que só se unem se os pinos forem iguais, o `LEFT JOIN` estabelece uma **tabela soberana** (a tabela posicionada à esquerda do comando). Entenda o fluxo que ocorre na memória do banco:

1. **`FROM` (A Tabela Soberana):** O banco lê a tabela da esquerda (ex: `produtos`). Todas as linhas dela entrarão no relatório final, sem exceção.
2. **`LEFT JOIN` (A Busca por Pares):** O banco olha para a tabela da direita (ex: `vendas`) procurando correspondências pelo ID.
3. **A Geração do `NULL`:** Para os produtos que venderam, os dados se unem normalmente. Para os produtos que **nunca** venderam, o banco não joga a linha fora; ele preenche as colunas da direita com o marcador `NULL` (vazio).
4. **`WHERE ... IS NULL` (A Auditoria):** Ao aplicarmos um filtro testando se a coluna da tabela da direita é nula, isolamos cirurgicamente apenas os elementos que não possuem relacionamento.

---

## 🚀 Como Executar o Desafio (Zero Instalação)

1. **Acesse a IDE Online:** Abra o site [SQLiteOnline.com](https://sqliteonline.com/).
2. **Confirme a sua estrutura:** Certifique-se de que as tabelas de `produtos` e `vendas` estão povoadas. Caso necessário, utilize os scripts de carga da pasta raiz.
3. **Abra o desafio:** Abra o arquivo [`desafio.sql`](./desafio.sql) e preencha as lacunas marcadas com `______` para capturar os produtos fantasmas do catálogo.
4. **Valide com o Gabarito:** Verifique se sua lógica confere com o arquivo [`solucao.sql`](./solucao.sql).

---

## 💼 O Contexto de Negócio (FP&A / Auditoria Operacional)

Manter produtos em catálogo que não geram movimentação financeira gera custos de armazenamento e distorce as análises de inventário. O time de FP&A solicitou um relatório contendo exclusivamente os produtos que nunca geraram receita para que o setor de marketing aplique uma estratégia de queima de estoque ou descontinuação.

---

## 💬 Participe!
Encontrou os itens parados? Deixe sua query registrada nos comentários da publicação no LinkedIn!

Se esta jornada prática está agregando valor à sua carreira, apoie o repositório deixando uma **⭐ Star**!
