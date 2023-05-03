--Questão A
--CPFs de todos os funcionários que trabalham na mesma combinação de projeto e horas que o funcionário de CPF 12345678966 trabalha.

SELECT DISTINCT Horas, Pnr
FROM TRABALHA_EM
WHERE Fcpf = '12345678966';

SELECT DISTINCT Fcpf
FROM TRABALHA_EM
WHERE Pnr = 1 AND Horas = 32.5 OR Pnr = 2 AND Horas = 7.5 ;

--Questão B
--nomes dos funcionários cujo salário é maior do que o salário de todos os funcionários do departamento de número 5.

SELECT DISTINCT f.pnome,f.minicial,f.unome
FROM funcionario as f
WHERE salario > all(SELECT salario FROM funcionario WHERE dnr=5);

--Questão C
--nome de cada funcionário que tem um dependente com o mesmo sexo do funcionário.

SELECT Pnome
FROM Funcionario f, Dependente d
WHERE f.sexo = d.sexo AND f.cpf = d.fcpf;

--Questão D
--nomes dos gerentes que possuem pelo menos um dependente

SELECT DISTINCT f1.pnome,f1.minicial,f1.unome
FROM funcionario f1,funcionario f2,dependente dd
WHERE 
    f1.cpf=f2.cpf_supervisor AND
    dd.fcpf=f1.cpf;

--Questão E
--soma dos salários de todos os funcionários, o salário máximo, o salário mínimo e a média dos salários.

SELECT SUM(salario) as Soma, MAX(salario) as Maior_salario, MIN(salario)Menor_salario, AVG(salario) as media_salarial
FROM funcionario;

--Questão F
--soma dos salários de todos os funcionários de cada departamento, bem como o salário máximo, o salário mínimo e a média dos salários de cada um desses departamentos.

SELECT SUM(salario), MAX(salario), MIN(salario), AVG(salario)
FROM FUNCIONARIO
WHERE Dnr IS NOT NULL
GROUP BY Dnr;

--Questão G
--o número total de funcionários da empresa.

SELECT COUNT(*)
FROM FUNCIONARIO;

--Questão H
--o número de funcionários de cada departamento.

SELECT COUNT(*), Dnr
FROM FUNCIONARIO
WHERE Dnr IS NOT NULL
GROUP BY Dnr;

--Questão I
--número de valores distintos de salário.

SELECT COUNT(DISTINCT Salario)
FROM FUNCIONARIO;

--Questão J
--nomes de todos os funcionários que possuem dois ou mais dependentes.

SELECT count(*),f.pnome
FROM DEPENDENTE d,funcionario f
WHERE f.cpf=d.Fcpf
GROUP BY cpf,f.pnome HAVING count(*) >=2 ;

--Questão K
--número do departamento, o número de funcionários no departamento e o salário médio do departamento, para cada departamento da empresa.

SELECT Dnr, COUNT(*), AVG(Salario)
FROM FUNCIONARIO
WHERE Dnr IS NOT NULL
GROUP BY Dnr;

--Questão L
--número do projeto, o nome do projeto e o número de funcionários que trabalham nesse projeto, para cada projeto.

SELECT Projnumero, Projnome, COUNT(Dnr)
FROM PROJETO, FUNCIONARIO
WHERE Dnum = dnr
GROUP BY Projnumero