//criar banco de dados;

create database banana;


//para criar tabelas;

create table pessoas (
	id int not null auto_increment, 
	nome varchar(30) Not null,
	nascimento date, 
	sexo enum('M','F'), 
	peso decimal(5,3), 
	altura decimal(3,2),
	nacionalidade varchar(20) default 'Brasil',
	primary key(id) 
 ) default charset = utf8;

//para inserir valores a tabela
 
 insert into pessoas values 
 (default, 'carmen', '1950-11-22', 'F', '50.5', '1.70', 'irlanda'),
 (default, 'januario', '1985-12-25', 'M', '70.85','1.90', default),
 (default, 'cosmo', '1935-11-05', 'M', '155.80', '2.00', default );
 
 //mostrar tabela
 
 select * from pessoas;   

//adicionar colunas a tabela

alter table pessoas
add column profissao varchar(10);

//remover colunas da tabela

alter table pessoas
drop column profissao;

select * from pessoas;

//alterar tipo primitivo e colocar em determinada posiçao

alter table pessoas
add column profissao varchar(10) after nome;

//adicionar coluna no começo

alter table pessoas 
add column codigo int first;

//modificar tipo constrants

alter table pessoas
modify column profissao varchar(20);

//alterar nome da coluna

alter table pessoas
change column profissao prof varchar(20);

//aleterar nome da tabela;

alter table gafonhotos
rename to gafanhotos;

//criar nova tabela mas com comando para impedir de sobrescrever

create table if not exists cursos (
Nome varchar(20) not null unique, 
descricao text,
carga int unsigned,
total_de_aulas int unsigned,
ano year default '2022'
) default charset = utf8;

alter table cursos 
add column Id_curso int first;

//add chave primaria para não se reptir

alter table cursos 
add primary key (id_curso);

describe cursos;

//apargar tabela

drop table; 

insert into  cursos values 
('1','HTML4','curso de HTML5','40','37','2022'),
('2','Algoritmos','Lógica de Programação','20','15','2022'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2022'),
('4','PGP','curso de PHP para iniciantes','40','20','2022'),
('5','JARVA','Introdução à Linguagem Java','10','29','2022'),
('6','MySQL','Banco de Dados','30','15','2020'),
('7','Word','curso completo de Word','40','30','2022'),
('8','Sapateado','Dança ritmica','40','30','2017'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2020'),
('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2021');


//modificar linha;

update cursos
set nome = 'HTML5'
where Id_curso = '1';

update cursos 
set nome = 'PHP', ano = '2015'
where Id_curso = '4';

//modificar com limite; 

update cursos 
set nome = 'JAVA', carga = '40', ano = '2015'
where Id_curso = '5'
Limit 1;

update Cursos 
set ano = '2020', carga = '0'
where ano = '2050'
Limit 3;


select * from cursos; 
cursos

//excluir linhas da tabela;

delete from cursos 
where carga = '0';

delete from cursos
where Id_curso = '10';

//apagar todas as linhas da tabela;

truncate cursos;

select * from gafonhotos;
describe gafonhotos;
describe cursos;

//apagar banco de dados;

drop database cadastro;

//mudar ordem ordem;

select nome,carga,ano from cursos
order by ano,nome asc;


//visualização só de coluna expecifica; 

select nome, descricao, carga from cursos	
where ano = '2016'
order by nome; 

select nome, descricao, ano from cursos 
where ano <> '2015'
order by ano, nome;

select nome, descricao, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

select nome, descricao, ano from cursos
where ano in (2014, 2016, 2020)
order by ano;

select * from cursos 
where carga > 35 and totaulas < 30;

select * from cursos
where carga > 35 or totaulas < 30;

