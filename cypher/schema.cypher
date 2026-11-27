// constraints de unicidade (também criam índice nos pontos de entrada)
CREATE CONSTRAINT curso_codigo IF NOT EXISTS
FOR (c:Curso) REQUIRE c.codigo IS UNIQUE;

CREATE CONSTRAINT disciplina_codigo IF NOT EXISTS
FOR (d:Disciplina) REQUIRE d.codigo IS UNIQUE;

CREATE CONSTRAINT departamento_sigla IF NOT EXISTS
FOR (dp:Departamento) REQUIRE dp.sigla IS UNIQUE;

// índices de apoio para as consultas
CREATE INDEX disciplina_nome_base IF NOT EXISTS
FOR (d:Disciplina) ON (d.nomeBase);

CREATE INDEX curso_nome IF NOT EXISTS
FOR (c:Curso) ON (c.nome);
