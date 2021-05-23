# pw3-p1: Uma simples ToDo List compartilhada.

## Funcionalidades:
- Criação e autenticação de usuários;
- Adicionar, Atualizar ou remover algum todo da lista;
- Dashboard atualiza conforme uma nova task é adicionada, a cada nova task add é automaticamente salva no BD (MySQL);
- Páginas para traamento dos erros: 404, 405 e 500.
- Jquery utilizado para construir o modal que aparece na fase de atualizar ou remover algum todo;
- Estilo foi uma mescla de CSS puro (posicionamento) com Bootstrap.

## Setup:
### Banco de dados:
create database p1_pw3_gabrielJayme;
use p1_pw3_gabrielJayme;

create table users (
	id 				int auto_increment,
    name 			varchar(255),
    password 		varchar(255),
    primary key (id)
);

create table todo (
	id 			int auto_increment,
    message	text,
    primary key (id)
);

### Rodar o projeto localmente pela IDE.
