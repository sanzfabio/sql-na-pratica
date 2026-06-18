# SQL na Prática #007 — Cláusula INNER JOIN 🎯 

Seja bem-vindo ao repositório de códigos práticos do **Episódio #007**. Neste laboratório, vamos dominar a cláusula `INNER JOIN` e compreender de forma visual como o motor do banco de dados conecta mundos isolados (como o seu ERP e o seu CRM) para extrair inteligência real de negócio.

---

## 🗂️ Entendendo a Mecânica Oculta: A Teoria dos "Blocos de Lego"

Muitos analistas travam ao lidar com múltiplos relacionamentos porque tentam enxergar o banco de dados como uma única tabela gigante de Excel. Para nunca mais errar, entenda o passo a passo que o motor realiza na memória ao executar um `INNER JOIN`:

1. **`FROM` (As Origens):** O banco identifica a tabela fato principal (ex: `vendas v`).
2. **`INNER JOIN` (O Acoplamento):** O banco traz a tabela dimensional que armazena os cadastros detalhados (ex: `produtos p`).
3. **`ON` (O Encaixe dos Pinos):** Não leia o `ON` como um simples "onde". Leia como a regra de conexão: *"Cruze os dados apenas se o `id_produto` da tabela de vendas for idêntico ao `id_produto` da tabela de produtos"*.
4. **A Seleção Natural:** Registros sem correspondência exata nos dois lados da moeda são descartados da consulta final.
5. **`SELECT` (A Exibição):** O relatório final substitui os códigos abstratos (`id_produto: 2`) por informações estratégicas legíveis (`nome_produto: 'Cadeira Ergonômica'`).

---

## 🚀 Como Executar o Desafio (Zero Instalação)

1. **Acesse a IDE Online:** Abra o site [SQLiteOnline.com](https://sqliteonline.com/).
2. **Crie a Base Relacional:** Caso precise inicializar as novas tabelas (`clientes`, `vendedores`, `produtos` e `vendas`), execute os scripts que estão na pasta raiz do projeto em [`base-de-dados/datasets/`](../base-de-dados/datasets/).
3. **Abra o desafio:** Abra o arquivo [`desafio.sql`](./desafio.sql) e tente preencher as lacunas marcadas com `______` para construir uma junção perfeita e limpa.
4. **Valide com o Gabarito:** Execute a sua consulta e valide se os seus resultados coincidem com o arquivo [`solucao.sql`](./solucao.sql).

---

## 💼 O Contexto de Negócio (Comercial / Analytics Engineering)

A diretoria comercial precisa auditar o fechamento do mês e mapear quais produtos físicos estão tracionando o faturamento da empresa. O relatório nativo do ERP mostra apenas os códigos identificadores de transação. Sua missão como Analytics Engineer é criar uma consulta unificada que retorne o **Nome do produto**, a **Quantidade total de pedidos** e a **Receita total gerada**, ordenando o ranking do produto mais rentável para o menos rentável.

---

## 💬 Participe!
Conseguiu chegar aos resultados esperados? Compartilhe a sua query nos comentários da publicação no LinkedIn!

Se esta série de laboratórios práticos está impulsionando o seu conhecimento em dados, apoie o projeto deixando uma **⭐ Star** neste repositório!
