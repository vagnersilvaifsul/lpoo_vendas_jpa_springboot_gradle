# lpoo_vendas_springboot_gradle
Projeto exemplo de acesso a banco de dados com JPA e Spring Data
Este projeto foi desenvolvido para demostrar como realizar o mapeamento objeto-relacional (ORM - Object-Relational Mapping) a partir de um diagrama de classes da UML utilizando Spring Data.
É utilizado como base de conhecimento para esta tarefa a seguinte referência: GUEDES, Gilleanes T. A. UML 2: uma abordagem prática. 2. ed. São Paulo: Novatec, 2011. Seção: 4.15 Mapeamento de Classes em Tabelas.

Artefatos utilizados:
1. Springboot -> Como container Spring
2. Gradle -> para gerenciar as dependências do projeto e o lifecycle.
3. JPA (Java Persistence Architecture) -> Especificação utilizada para criação e manipulação do banco de dados.
4. Spring Data -> Framework que implementa a especificação JPA (que realiza a especificação, em outras palavras, que cria e manipula o banco de dados).
5. MariaDB -> como tecnologia de banco de dados relacional.
6. Lombok -> para eliminar o código "boilerplate" (construtores, getters, setters, toString, equal, hashcode) das classes de modelo.
7. JUnit -> para o teste altomatizado do app.