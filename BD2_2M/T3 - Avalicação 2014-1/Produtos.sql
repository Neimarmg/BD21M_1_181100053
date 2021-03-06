CREATE TABLE produtos (

	idProduto serial PRIMARY KEY, 
	nome VARCHAR(50) UNIQUE NOT NULL,
	unidade VARCHAR, 
	quantidade INTEGER NOT NULL, 
	preco_unitario DOUBLE PRECISION not null, 
	estoque_minimo INTEGER,
	estoque_maximo INTEGER UNIQUE
	
	CONSTRAINTS CHECK (estoque_minimo > 0)
)

SELECT * produtos;


ALTER TABLE produtos ALTER descricao;
ALTER TABLE descricao ALTER produtos;

ALTER TABLE produtos ALTER COLUMNS preco_unitario  CONSTRAINTS not null;
ALTER TABLE produtos ALTER COLUMNS quantidade  TYPE NUMERIC (12,2);


INSERT INTO produtos (nome, unidade, quantidade, preco_unitario, estoque_minimo, estoque_maximo) VALUES 
('leite', 'cx', 10, 1,20, 20, 500)
('leite', 'cx', 10, 2,01, 10, 800)
('leite', 'cx', 12, 1,15, 20, 100)