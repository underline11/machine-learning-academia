#  Sistema de Gestão de Academia (Database Schema)

Este repositório contém a modelagem completa de um banco de dados relacional para o gerenciamento de uma academia, cobrindo desde o cadastro de alunos até o controle de pagamentos e treinos.

##  Estrutura do Banco de Dados

O projeto demonstra conceitos avançados de SQL, incluindo integridade referencial e normalização de dados.

### Principais Tabelas:
- **Alunos & Professores:** Cadastro completo com informações de contato.
- **Planos:** Diferenciação entre modalidades (Mensal, Anual) e valores.
- **Pagamentos:** Registro financeiro vinculado ao aluno e ao plano escolhido.
- **Treinos & Aulas:** Controle de cronograma de exercícios e capacidade de turmas.

##  Tecnologias
- **SQL (MySQL/PostgreSQL)**
- **Relacionamentos:** 1:N (Um aluno para muitos treinos) e N:N (através de tabelas de associação).

##  Como Testar
1. Copie o conteúdo do arquivo `schema.sql`.
2. Cole em seu gerenciador de banco de dados (MySQL Workbench, pgAdmin ou [OneCompiler](https://onecompiler.com/mysql)).
3. *Nota: Se testar online, remova as linhas `CREATE DATABASE` e `USE`.*

##  Consultas de Exemplo Incluídas
O script já conta com inserções de dados (`INSERT`) que permitem validar:
- Histórico de pagamentos por aluno.
- Agenda de aulas por professor.
- Validade de treinos ativos.
