# SQL na Prática #005 — Cláusula GROUP BY 🗂️

Seja bem-vindo ao laboratório prático do **Episódio #005**. Neste módulo, você vai dominar a cláusula `GROUP BY`, o recurso definitivo do SQL para condensar informações e gerar relatórios agregados estruturados diretamente na fonte.

Aprenda como o banco de dados "esmaga" milhares de linhas repetidas para criar registros únicos de resumo executivo.

---

## 🚀 Como Executar o Desafio (Zero Instalação)

1. **Acesse a IDE Online:** Abra o site [SQLiteOnline.com](https://sqliteonline.com/).
2. **Confirme sua tabela:** Como estamos a utilizar a nossa base unificada, caso já tenha a tabela `vendas` criada dos episódios anteriores, está pronto para avançar! Se precisar de a recriar ou validar, utilize o link direto para o script na raiz do nosso repositório: [`vendas.sql`](../base-de-dados/vendas.sql).
3. **Abra o desafio:** Veja o arquivo [`desafio.sql`](./desafio.sql) e tente preencher as lacunas marcadas com `______` para construir o indicador solicitado.
4. **Valide o seu resultado:** Execute a sua query e confirme se o resultado final bate exatamente com o gabarito detalhado em [`solucao.sql`](./solucao.sql).

---

## 💼 O Contexto de Negócio (Analytics / Comercial)

O time de Planejamento Estratégico e Logística solicitou um relatório urgente sobre a volumetria física de itens movimentados. Para otimizar a distribuição do estoque e os custos de armazenagem, eles precisam entender a tração de cada departamento. 

### Sua Missão:
Escrever uma query SQL que retorne a **quantidade total de itens vendidos** (volume de transações) quebrado por cada **categoria** de produto, ordenando o resultado final do maior volume para o menor (um ranking de vendas por categoria).

---

## 💬 Participe!
Conseguiu chegar aos números corretos? Partilhe a sua query nos comentários do post no LinkedIn e interaja com a comunidade!

Se este repositório está a ser útil para a sua jornada com dados, apoie o projeto deixando uma **⭐ Star**!
