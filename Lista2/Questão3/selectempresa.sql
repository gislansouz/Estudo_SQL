--Recuperar todos os funcionários cujo endereço esteja em ‘’.
SELECT * FROM funcionario WHERE endereco LIKE '%São Paulo, SP%';

--Recuperar nome do departamento, nome completo do funcionário e nome do projeto onde ele trabalha, ordenado por departamento, e, dentro de cada departamento, ordenado alfabeticamente pelo sobrenome, depois pelo primeiro nome.
SELECT d.dnome,f.pnome,f.minicial,f.unome,p.projnome 
FROM funcionario f,trabalha_em t,departamento d,projeto p 
WHERE 
    f.cpf=t.fcpf AND
    t.pnr=p.projnumero AND
    f.dnr=d.dnumero
ORDER BY d.dnumero, f.unome, f.pnome;

--Recupere os nomes de todos os funcionários no departamento 5 que trabalham mais de 10 horas por semana no projeto ‘ProdutoX’.
SELECT f.pnome,f.minicial,f.unome
FROM funcionario f,trabalha_em t,departamento d,projeto p 
WHERE 
    f.cpf=t.fcpf AND
    t.pnr=p.projnumero AND
    f.dnr=d.dnumero AND
    f.dnr= 5 AND
    t.horas >= 10.0 AND
    p.projnome='ProdutoX';

--Liste os nomes de todos os funcionários que possuem um dependente com o primeiro nome igual a seu próprio.
SELECT f.pnome,f.minicial,f.unome
FROM funcionario f,dependente dd
WHERE 
    dd.fcpf=f.cpf AND
    dd.Nome_dependente=f.pnome;
    
--Ache os nomes de todos os funcionários que são supervisionados diretamente por ‘Fernando Wong’.
SELECT f1.pnome,f1.minicial,f1.unome
FROM funcionario f1,funcionario f2
WHERE 
    f1.cpf_supervisor=f2.cpf AND
    f2.pnome='Fernando'AND
    f2.unome='Wong';

--Recuperar os nomes de todos os funcionários que não possuem supervisores.
SELECT f1.pnome,f1.minicial,f1.unome
FROM funcionario f1
WHERE 
    f1.cpf_supervisor is null;

--Selecionar CPFs de todos os funcionários que trabalham na mesma combinação de projeto e horas que o funcionário de CPF 12345678966 trabalha.
SELECT f.cpf
FROM funcionario f,trabalha_em t,projeto p 
WHERE 
    t.fcpf='12345678966' AND
    t.pnr=p.projnumero;

--Obter o nome de cada funcionário que tem um dependente com o mesmo sexo do funcionário.
SELECT f.pnome,f.minicial,f.unome
FROM funcionario f,dependente dd
WHERE 
    dd.fcpf=f.cpf AND
    dd.sexo=f.sexo;
    
    
--Listar os nomes dos gerentes que possuem pelo menos um dependente.
SELECT DISTINCT f1.pnome,f1.minicial,f1.unome
FROM funcionario f1,funcionario f2,dependente dd
WHERE 
    f1.cpf=f2.cpf_supervisor AND
    dd.fcpf=f1.cpf;
    
--Listar os CPFs de todos os funcionários que trabalham nos projetos de números 1, 2 ou 3.
SELECT DISTINCT f.cpf
FROM funcionario f,trabalha_em t
WHERE 
    f.cpf=t.fcpf AND
    (t.pnr=1 OR
    t.pnr=2 OR
    t.pnr=3);

--Recupere todos os valores de salário distintos de funcionários. 
SELECT DISTINCT f.salario
FROM funcionario f

--Mostrar nome completo do funcionário e salário acrescido de 10% dos funcionários que trabalham no projeto ‘ProdutoX’.

SELECT DISTINCT f.pnome||' '||f.minicial||' '||f.unome as nome_completo,f.salario*1.1 as salario
FROM funcionario f,trabalha_em t,departamento d,projeto p 
WHERE 
    f.cpf=t.fcpf AND
    t.pnr=p.projnumero AND
    p.projnome='ProdutoX';