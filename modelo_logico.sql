create table aluno (

id_aluno int primary key auto_increment not null,
nome varchar (50) not null,
data_nasc date not null,
endereco varchar(50) not null,
genero char(1) not null,
email varchar(50) not null,
telefone int(10) not null

);
drop table aluno;

create table turma (
ID_turma int primary key auto_increment,
ano int not null,
serie varchar(20) not null,
num_alunos int not null

);

drop table turma; 

CREATE TABLE Aluno_Curso (
ID_Aluno INT NOT NULL,
ID_Turma INT NOT NULL,
ID_Disciplina INT NOT NULL,
FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
FOREIGN KEY (ID_Turma) REFERENCES Turma(ID_Turma),
FOREIGN KEY (ID_Disciplina) REFERENCES Disciplina(ID_Disciplina)
);
drop table Aluno_Curso;

create table status(

ID int primary key auto_increment,
nome varchar(50) not null
);

drop table status;

create table instrutor (

id_instrutor int primary key auto_increment,
nome varchar (50) not null,
data_nasc date not null,
endereco varchar(50) not null,
genero char(1) not null,
email varchar(50) not null,
telefone int(10) not null
);

drop table instrutor;

create table pagamento (

id_pagamento int primary key auto_increment,
id_aluno int not null,
id_despesa int not null,
data_pagamento date not null,
valor_pago float not null,
metodo_pagamento varchar(20) not null,
foreign key (id_aluno) references aluno (id_aluno),
foreign key (id_despesa) references despesa (id_despesa)
);

drop table pagamento;

create table despesa(

id_despesa int primary key auto_increment,
id_aluno int not null,
descricao varchar(50) not null,
valor float not null,
data_despesa date not null,
foreign key (id_aluno) references aluno (id_aluno)
);

drop table despesa;

create table avaliacao(

id_avaliacao int primary key auto_increment,
id_disciplina int not null,
id_turma int not null,
id_aluno int not null,
tipo_avaliacao varchar(20) not null,
data_avaliacao date not null,
nota decimal (4,2) not null,
foreign key (id_disciplina) references disciplina (id_disciplina),
foreign key (id_turma) references turma (id_turma),
foreign key (id_aluno) references aluno (id_aluno)
);

drop table avaliacao;

create table disciplina (

id_disciplina int primary key auto_increment,
nome varchar(50) not null,
cargaHoraria int not null
);

drop table disciplina