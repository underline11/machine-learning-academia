INSERT INTO alunos (nome, data_nascimento, genero, telefone, email, data_cadastro) VALUES
('João Silva', '1995-04-10', 'Masculino', '11999990001', 'joao@email.com', '2024-01-10'),
('Maria Souza', '1998-08-22', 'Feminino', '11999990002', 'maria@email.com', '2024-02-15');

INSERT INTO professores (nome, especialidade, telefone, email) VALUES
('Carlos Lima', 'Musculação', '11988880001', 'carlos@email.com'),
('Ana Costa', 'Yoga', '11988880002', 'ana@email.com');

INSERT INTO planos (tipo_plano, descricao, preco, duracao_meses) VALUES
('Mensal', 'Plano mensal com acesso livre', 120.00, 1),
('Anual', 'Plano anual com desconto', 1200.00, 12);

INSERT INTO treinos (id_aluno, descricao, data_inicio, data_fim) VALUES
(1, 'Treino de força A', '2024-03-01', '2024-03-30'),
(2, 'Treino funcional', '2024-03-05', '2024-04-05');

INSERT INTO aulas (tipo_aula, id_professor, horario, capacidade) VALUES
('Yoga', 2, '2024-03-20 18:00:00', 20),
('Musculação', 1, '2024-03-21 19:00:00', 15);

INSERT INTO pagamentos (id_aluno, id_plano, data_pagamento, valor_pago, forma_pagamento) VALUES
(1, 1, '2024-03-01', 120.00, 'Cartão'),
(2, 2, '2024-03-05', 1200.00, 'PIX');
