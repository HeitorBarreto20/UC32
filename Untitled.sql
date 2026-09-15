CREATE TABLE [alunos] (
  [id_aluno] int PRIMARY KEY IDENTITY(1, 1),
  [nome] varchar(100),
  [email] varchar(100),
  [data_nascimento] date
)
GO

CREATE TABLE [cursos] (
  [id_curso] int PRIMARY KEY IDENTITY(1, 1),
  [nome_curso] varchar(100),
  [carga_horaria] int,
  [nivel] varchar(50)
)
GO

CREATE TABLE [professores] (
  [id_professor] int PRIMARY KEY IDENTITY(1, 1),
  [nome] varchar(100),
  [email] varchar(100),
  [especialidade] varchar(100)
)
GO

CREATE TABLE [matriculas] (
  [id_matricula] int PRIMARY KEY IDENTITY(1, 1),
  [id_aluno] int,
  [id_curso] int,
  [id_professor] int,
  [data_matricula] date,
  [status] varchar(30)
)
GO

ALTER TABLE [matriculas] ADD FOREIGN KEY ([id_aluno]) REFERENCES [alunos] ([id_aluno])
GO

ALTER TABLE [matriculas] ADD FOREIGN KEY ([id_curso]) REFERENCES [cursos] ([id_curso])
GO

ALTER TABLE [matriculas] ADD FOREIGN KEY ([id_professor]) REFERENCES [professores] ([id_professor])
GO
