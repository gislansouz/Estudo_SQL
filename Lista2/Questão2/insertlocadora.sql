INSERT INTO clientes VALUES
(1, 'Victor', '12345678909', '2023-03-30', 'Quixadá', 'ce'),
(2, 'Jaoa',   '76767673454', '2023-05-29', 'Quixadá', 'ce'),
(3, 'Marcos', '57785577445', '2023-06-01', 'Quixadá', 'ce');

INSERT INTO categorias VALUES
(1, 'Terror'),
(2, 'Acão' ),
(3, 'Herois');

INSERT INTO classes VALUES 
(1, 'bronze', 1.50),
(2, 'prata', 2.00),
(3, 'ouro', 3.00);

INSERT INTO distribuidores VALUES
(1, 'Amazon'),
(2, 'Netflix'),
(3, 'Disney');

INSERT INTO filmes VALUES
(1, 'Shazam!',1, 2022 , 2, 1),
(2, 'Resgate',2, 2020 , 2, 3),
(3, 'Vingadores: Guerra Infinita',3, 2018 , 3, 3);

INSERT INTO locacoes VALUES
(1,2,3, '2023-10-23','2023-10-30',NULL,12.00), 
(2,1,2, '2023-10-20','2023-10-30',NULL,14.00), 
(3,2,1, '2023-04-20','2023-04-25','2023-04-26',20.00);

select * from clientes;
select * from categorias;
select * from classes;
select * from distribuidores;
select * from filmes;
select * from locacoes;