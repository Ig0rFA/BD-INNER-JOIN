
/*Realizando a criacao das tabelas necessarias*/
create table Cidades (
id int primary key,
nome varchar(60) not null,
populacao int
);

create table Alunos (
id int primary key,
nome varchar(60) not null,
data_nasc date,
cidade_id int,

foreign key (cidade_id) references Cidades(id)
);


/*Alimentando a tabela com informacoes necessarias*/
INSERT INTO Cidades VALUES (1, 'Arraial dos Tucanos' , 42632);
INSERT INTO Cidades VALUES (2, 'Springfield' , 13820);
INSERT INTO Cidades VALUES (3, 'Hill Valley' , 27383);
INSERT INTO Cidades VALUES (4, 'Coruscant' , 19138);
INSERT INTO Cidades VALUES (5, 'Minas Tirith' , 31394);


INSERT INTO Alunos VALUES (1, 'Immanuel Kant' , date'1724-04-22', 4);
INSERT INTO Alunos VALUES (2, 'Alan Turing' , date'1912-06-23', 3);
INSERT INTO Alunos VALUES (3, 'George Boole' , date'2002-01-01', 1);
INSERT INTO Alunos VALUES (4, 'Lynn Margulis' , date'1991-08-12', 3);
INSERT INTO Alunos VALUES (5, 'Nicola Tesla' , date'2090-01-08', null);
INSERT INTO Alunos VALUES (6, 'Ada Lovelace' , date'1978-05-28', 4);
INSERT INTO Alunos VALUES (7, 'Claude Shannon' , date'1982-10-15', 3);
INSERT INTO Alunos VALUES (8, 'Charles Darwin' , date'2010-02-06', null);
INSERT INTO Alunos VALUES (9, 'Marie Curie' , date'2007-07-12', 3);
INSERT INTO Alunos VALUES (10, 'Carl Sagan' , date'2000-11-20', 1);
INSERT INTO Alunos VALUES (11, 'Tim Berners-Lee' , date'1973-12-05', 4);
INSERT INTO Alunos VALUES (12, 'Richard Feynman' , date'1982-09-12', 1);

/*Selecionado todas as colunas da tabela alunos que tenha relacao com cidades nesse caso o id dos alunos com cidades id*/
select * from Alunos inner join Cidades on Cidades.id = Alunos.cidade_id;

