## Data de início

Eu iniciei esse desafio em Agosto de 2022

## Título

### Original:
Celestial Bodies Database

### Tradução:
Banco de Dados de Corpos Celestes

## Descrição

### Original:
### Complete the tasks below

- You should create a database named universe

- Be sure to connect to your database with \c universe. Then, you should add tables named galaxy, star, planet, and moon

- Each table should have a primary key

- Each primary key should automatically increment

- Each table should have a name column

- You should use the INT data type for at least two columns that are not a primary or foreign key

- You should use the NUMERIC data type at least once

- You should use the TEXT data type at least once

- You should use the BOOLEAN data type on at least two columns

- Each "star" should have a foreign key that references one of the rows in galaxy

- Each "planet" should have a foreign key that references one of the rows in star

- Each "moon" should have a foreign key that references one of the rows in planet

- Your database should have at least five tables

- Each table should have at least three rows

- The galaxy and star tables should each have at least six rows

- The planet table should have at least 12 rows

- The moon table should have at least 20 rows

- Each table should have at least three columns

- The galaxy, star, planet, and moon tables should each have at least five columns

- At least two columns per table should not accept NULL values

- At least one column from each table should be required to be UNIQUE

- All columns named name should be of type VARCHAR

- Each primary key column should follow the naming convention table_name_id. For example, the moon table should have a primary key column named moon_id

- Each foreign key column should have the same name as the column it is referencing

### Tradução:
### Complete as seguintes tarefas:

- Você deve criar um banco de dados chamado "universe".

-Certifique-se de se conectar ao seu banco de dados com \c universe. Em seguida, você deve adicionar tabelas chamadas "galaxy", "star", "planet" e "moon".

- Cada tabela deve ter uma chave primária.

- Cada chave primária deve ser incrementada automaticamente.

- Cada tabela deve ter uma coluna "name".

- Você deve usar o tipo de dados INT para pelo menos duas colunas que não são chave primária ou estrangeira.

- Você deve usar o tipo de dados NUMERIC pelo menos uma vez.

- Você deve usar o tipo de dados TEXT pelo menos uma vez.
 
- Você deve usar o tipo de dados BOOLEAN em pelo menos duas colunas.
 
- Cada "star" deve ter uma chave estrangeira que referencia uma das linhas em "galaxy".
 
- Cada "planet" deve ter uma chave estrangeira que referencia uma das linhas em "star".
 
- Cada "moon" deve ter uma chave estrangeira que referencia uma das linhas em "planet".
 
- Seu banco de dados deve ter pelo menos cinco tabelas.
 
- Cada tabela deve ter pelo menos três linhas.
 
- As tabelas "galaxy" e "star" devem ter pelo menos seis linhas cada.
 
- A tabela "planet" deve ter pelo menos 12 linhas.
 
- A tabela "moon" deve ter pelo menos 20 linhas.
 
- Cada tabela deve ter pelo menos três colunas.
 
- As tabelas "galaxy", "star", "planet" e "moon" devem ter pelo menos cinco colunas cada.
 
- Pelo menos duas colunas por tabela não devem aceitar valores NULL.

- Pelo menos uma coluna de cada tabela deve ser obrigatoriamente ÚNICA.
 
- Todas as colunas chamadas "name" devem ser do tipo VARCHAR.
 
- Cada coluna de chave primária deve seguir a convenção de nomenclatura "table_name_id". Por exemplo, a tabela "moon" deve ter uma coluna de chave primária chamada "moon_id".
 
- Cada coluna de chave estrangeira deve ter o mesmo nome que a coluna a qual ela está referenciando.
