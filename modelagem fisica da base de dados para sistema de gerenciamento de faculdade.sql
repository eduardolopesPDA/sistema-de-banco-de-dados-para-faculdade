CREATE DATABASE sistema_faculdade;

USE sistema_faculdade;

CREATE TABLE tbl_alunos (
id_aluno INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (100),
cpf CHAR(11),
telefone VARCHAR(15),
email VARCHAR(100),
matricula VARCHAR(50)
);

CREATE TABLE tbl_curso (
id_curso INT PRIMARY KEY AUTO_INCREMENT,
carga_horaria INT,
nome_curso VARCHAR(100)
);

CREATE TABLE tbl_materia (
id_materia INT PRIMARY KEY AUTO_INCREMENT,
nome_materia VARCHAR(100),
carga_horaria INT,
id_curso INT,
FOREIGN KEY (id_curso) REFERENCES tbl_curso(id_curso)
);

CREATE TABLE tbl_professor(
id_professor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
cpf CHAR(11),
email VARCHAR(100),
formacao VARCHAR(100)
);

CREATE TABLE tbl_turma(
id_turma INT PRIMARY KEY AUTO_INCREMENT,
id_materia INT,
id_professor INT,
semestre VARCHAR(10),
ano YEAR,
FOREIGN KEY (id_materia) REFERENCES tbl_materia(id_materia),
FOREIGN KEY (id_professor) REFERENCES tbl_professor(id_professor)
);

CREATE TABLE tbl_notas(
id_notas INT PRIMARY KEY AUTO_INCREMENT,
id_aluno INT,
id_turma INT,
nota DECIMAL(4,2),
FOREIGN KEY (id_aluno) REFERENCES tbl_alunos(id_aluno),
FOREIGN KEY (id_turma) REFERENCES tbl_turma(id_turma)
);