# SQL na Prática #006 — Cláusula HAVING 🎯

Seja bem-vindo ao repositório de códigos práticos do **Episódio #006**. Neste laboratório, vamos dominar a cláusula `HAVING` e compreender, de uma vez por todas, a ordem lógica de execução que o motor do banco de dados utiliza por trás dos panos.

---

## 🗂️ Entendendo a Mecânica Oculta: A Lógica dos "Baldes"

Muitos analistas tropeçam no `HAVING` porque tentam filtrar agregações (como `SUM`, `COUNT`, `AVG`) dentro do `WHERE`. Para nunca mais errar, entenda o passo a passo que o banco faz na memória:

1. **`FROM` (A Origem):** O banco localiza a tabela `vendas`.
2. **`WHERE` (O Filtro de Linhas - "O que sobrou"):** O banco passa linha por linha filtrando e descartando o que não cumpre a regra (ex: filtrar por data). O que sobra são os registros sobreviventes.
3. **`GROUP BY` (A Separação em Baldes):** O banco pega nessas linhas sobreviventes e separa-as em **baldes organizadores** baseados na coluna informada (ex: `categoria`). Tudo o que é 'Eletrónicos' vai para um balde; tudo o que é 'Móveis' vai para outro. A partir daqui, as linhas individuais deixam de existir e passam a ser **grupos**.
4. **`HAVING` (O Filtro de Baldes):** Agora que os baldes estão consolidados, as funções de agregação calculam os totais de cada balde. O `HAVING` entra como um "porteiro" e elimina os baldes inteiros que não atingiram a meta (ex: faturamento total > 3000).
5. **`SELECT` (A Exibição):** O banco monta o relatório final na tela com os baldes que restaram.

---

## 🚀 Como Executar o Desafio (Zero Instalação)

1. **Acesse a IDE Online:** Abra o site [SQLiteOnline.com](https://sqliteonline.com/).
2. **Confirme a sua tabela unificada:** Utilize a mesma estrutura de dados dos episódios anteriores. Caso precise de a recriar, o script global está na raiz do nosso projeto: [`vendas.sql`](../base-de-dados/vendas.sql).
3. **Abra o desafio:** Abra o arquivo [`desafio.sql`](./desafio.sql) e tente preencher as lacunas marcadas com `______` aplicando o conceito de filtro pós-agrupamento.
4. **Valide com o Gabarito:** Execute a sua query e valide se os resultados coincidem com o ficheiro [`solucao.sql`](./solucao.sql).

---

## 💼 O Contexto de Negócio (FP&A / Pricing)

O departamento de Controladoria e Precificação necessita de identificar quais as divisões de negócio que sustentam um ticket médio elevado por transação. O objetivo não é analisar o faturamento bruto total, mas sim isolar as **categorias de produtos que possuem uma média de venda superior a R$ 1.000,00**, permitindo desenhar pacotes promocionais estratégicos para o próximo trimestre.

---

## 💬 Participe!
Alcançou os valores pretendidos? Partilhe a sua query nos comentários da publicação no LinkedIn!

Se esta série de laboratórios práticos está a impulsionar o seu conhecimento em dados, apoie o projeto deixando uma **⭐ Star** neste repositório!
