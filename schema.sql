CREATE DATABASE IF NOT EXISTS academia;
USE academia;

CREATE TABLE alunos (
  id_aluno INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE,
  genero VARCHAR(20),
  telefone VARCHAR(20),
  email VARCHAR(100),
  data_cadastro DATE
);

CREATE TABLE professores (
  id_professor INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  especialidade VARCHAR(100),
  telefone VARCHAR(20),
  email VARCHAR(100)
);

CREATE TABLE planos (
  id_plano INT AUTO_INCREMENT PRIMARY KEY,
  tipo_plano VARCHAR(50),
  descricao TEXT,
  preco DECIMAL(10,2),
  duracao_meses INT
);

CREATE TABLE treinos (
  id_treino INT AUTO_INCREMENT PRIMARY KEY,
  id_aluno INT NOT NULL,
  descricao TEXT,
  data_inicio DATE,
  data_fim DATE,
  FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);

CREATE TABLE aulas (
  id_aula INT AUTO_INCREMENT PRIMARY KEY,
  tipo_aula VARCHAR(50),
  id_professor INT NOT NULL,
  horario DATETIME,
  capacidade INT,
  FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

CREATE TABLE pagamentos (
  id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
  id_aluno INT NOT NULL,
  id_plano INT NOT NULL,
  data_pagamento DATE,
  valor_pago DECIMAL(10,2),
  forma_pagamento VARCHAR(30),
  FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
  FOREIGN KEY (id_plano) REFERENCES planos(id_plano)
);
