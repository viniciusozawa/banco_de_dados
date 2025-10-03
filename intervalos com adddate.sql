#Acrecentam intervalos 
SELECT ADDDATE("2025-10-03",INTERVAL 9 DAY);

SELECT ADDDATE("2025-10-03",INTERVAL 9 MONTH);

#pegar data atual
SELECT CURDATE();
SELECT CURRENT_DATE();


#mostra a data atual( e pode ser formatada)
SELECT DATE_FORMAT(CURDATE(), "%d/%m/%Y") AS "Data atual";
SELECT CURTIME();

SELECT CURRENT_TIMESTAMP();
SELECT NOW();
SELECT date_format(NOW(), "%d/%m/%Y %H:%i:%s" AS dataHora);


#extrai a data de um campo que esteja no padrao year-mouth-day
SELECT DATE("2025-02-03 07:31:53");
SELECT DATE("hoje é dia 2025-02-03 07:31:53");
SELECT DATE("The date is 2025-02-03");

SELECT DATEDIFF("2025-12-31","2025");

SELECT f.nomeFuncionario, DATEDIFF(f.dataDemissao,f.dataContratacao) FROM funcionario AS f
WHERE f.dataDemissao IS NOT NULL;

SELECT DAY("2025-02-03");
SELECT DAYOFMONTH("2025-02-03");

#para mostrar em portugues variavel de ambiente definindo para pt-br
SELECT DAYNAME("2025-02-03");
SET lc_time_names = 'pt_BR'


