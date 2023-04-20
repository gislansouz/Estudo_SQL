SELECT * FROM FUNCIONARIO;

SELECT cpf,unome FROM FUNCIONARIO WHERE salario >= 30000;

SELECT datanasc,endereco FROM FUNCIONARIO WHERE pnome='João' AND minicial='B' AND unome='Silva';

SELECT pnome,minicial,unome,datanasc FROM FUNCIONARIO WHERE sexo='F' AND datanasc>='01/01/1960';

SELECT * FROM funcionario,departamento WHERE cpf_gerente=cpf;

SELECT  FROM funcionario,departamento WHERE dnr=dnumero AND dnome='Pesquisa';

SELECT * FROM projeto,funcionario,departamento WHERE dnum=dnumero AND cpf_gerente=cpf AND projlocal='Maua';

insert into FUNCIONARIO values ('Roberto',  'F',  'Santos',  '94377554355',  '21-06-1972',  'Rua  Benjamin,  34,  Santo
André, SP', 'M', 58.000, '88866555576', 1);

--Questão 2-A

SELECT datanasc,endereco FROM FUNCIONARIO WHERE pnome='João' AND minicial='B' AND unome='Silva';

--Questão 2-B

SELECT pnome,minicial,unome,endereco FROM funcionario,departamento WHERE dnr=dnumero AND dnome='Pesquisa';

--Questão 2-C

SELECT Projnumero,Dnum,unome,endereco,datanasc FROM projeto,funcionario,departamento WHERE dnum=dnumero AND cpf_gerente=cpf AND projlocal='Maua';

--Questão 2-D
Para cada funcionário, recupere o primeiro e o último nome do 
funcionário e o primeiro e o último nome de seu supervisor imediato.

SELECT pnome,unome FROM funcionario;

--Questão 2-E

SELECT cpf FROM funcionario;

--Questão 2-F

SELECT cpf,Dnome FROM funcionario,departamento WHERE dnr=dnumero;

--Questão 2-H

SELECT Projnumero FROM projeto,funcionario,departamento WHERE dnum=dnr AND dnumero=dnr AND unome='Silva';

--Questão 2-J

Recuperar nome completo de todos os funcionários no departamento 5, cujo salário esteja entre R$ 30.000,00 e R$ 40.000,00.

SELECT pnome,minicial,unome FROM funcionario,departamento WHERE dnr=dnumero AND dnr=5 AND salario >= 30000 AND salario <=4000;
