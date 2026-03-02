<h1>Sistema de Banco de Dados - Faculdade 🎓 </h1>
Este projeto consiste na modelagem e implementação de um banco de dados SQL para o gerenciamento de uma instituição de ensino. O sistema organiza as relações entre alunos, cursos, matérias, professores, turmas e notas.

<h2>📌 Sobre o Projeto </h2>
O objetivo principal é oferecer uma estrutura sólida para armazenar informações acadêmicas, permitindo o rastreamento completo do desempenho de um aluno em turmas específicas, vinculadas a matérias e professores.

<h2>🗂️ Estrutura das Tabelas </h2>
O banco de dados sistema_faculdade é composto pelas seguintes tabelas:

tbl_alunos: Cadastro dos estudantes (Nome, CPF, Telefone, Email e Matrícula).

tbl_curso: Registro dos cursos disponíveis e sua carga horária total.

tbl_materia: Disciplinas que compõem cada curso (relacionadas à tabela de cursos).

tbl_professor: Cadastro dos docentes e suas respectivas formações.

tbl_turma: A união entre uma matéria, um professor, o ano e o semestre letivo.

tbl_notas: Onde são registrados os resultados dos alunos em cada turma.


<h1>🛠️ Tecnologias Utilizadas </h1>
<p><img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/mysql/mysql-original-wordmark.svg" width="55" height="55" /></p>
<h3>MySQL</h3>

<h1>🚀 Como Executar</h1>
Para subir o banco de dados em seu ambiente local:

Certifique-se de ter um servidor MySQL instalado (como XAMPP, WAMP ou MySQL Workbench).

Copie o código SQL abaixo.

Cole no seu terminal ou console de comandos SQL.

Execute os comandos para criar a estrutura.

<h1>Código de Inicialização </h1>
<p>Quando você já estiver no seu servidor SQL execute os seguintes códigos:</p>
Criação do Banco
<h2>CREATE DATABASE sistema_faculdade;</h2>
<h2>USE sistema_faculdade;</h2>
<h2> As tabelas devem ser criadas na ordem correta!! Devido às chaves estrangeiras (Foreign Keys)</h2>
 

<h1>📊 Regras de Negócio Implementadas </h1>
Chaves Primárias (PK): Garantem que cada registro (aluno, professor, curso) seja único.

Chaves Estrangeiras (FK): Mantêm a integridade dos dados, impedindo, por exemplo, que uma nota seja atribuída a um aluno que não existe.

Auto-Incremento: Os IDs são gerados automaticamente pelo sistema para facilitar a inserção de novos dados.
