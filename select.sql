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

//mostrar nome por letra, palavra;

select * from cursos 
where nome like 'a%';

select * from cursos
where nome like '%a';

select * from cursos
where nome like '%a%';

select * from cursos
where nome not like '%a%';

select * from cursos
where nome like 'ph%p_';

select * from gafanhotos 
where nome like '%silva%';


select distinct carga from cursos
order by carga;

select count(*) from cursos where carga > 40;

//selecionar o maior;

select max(carga) from cursos;

select max(totaulas) from cursos where ano = '2016';

//somar;

select sum(totaulas) from cursos where ano = '2016';

//media total;

select avg(totaulas) from cursos where ano = '2016';