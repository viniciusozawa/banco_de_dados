INSERT INTO turmas VALUES(NULL, "1INFOA", 2025);
INSERT INTO turmas VALUES(NULL, "1INFOB", 2025);
INSERT INTO turmas VALUES(NULL, "1INFOC", 2025);

SELECT * FROM turmas;


INSERT INTO turmas(nomeTurma, anoIngresso) VALUES
("2INFOD", 2024),
("2INFOE", 2024),
("2INFOF", 2024);

INSERT INTO turmas(nomeTurma, anoIngresso) VALUES("3INFO-G",2023),
("3INFO-h",2023);


UPDATE turmas SET nomeTurma ="3INFOG" WHERE codTurma = 7;
UPDATE turmas SET nomeTurma ="3INFOH" WHERE codTurma = 8;

INSERT INTO turmas VALUES(NULL, "teste", 2020);

DELETE FROM turmas WHERE codTurma = 9;

#mostrar todas as turmas em ordem descrecente pelo ano de ingresso 
SELECT * FROM turmas ORDER BY anoIngresso DESC; 

#exibir apenas os nomes das turmas em ordem alfabetica crescente

SELECT nomeTurma FROM turmas ORDER BY nomeTurma ASC;

#listar todos os dados das turmas cujo seja 2 ou 4 ou 6

SELECT * FROM turmas WHERE codTurma = 2 OR codTurma = 4 OR codTurma = 6; 

SELECT * FROM turmas AS t WHERE t.codTurma IN (2,4,6);

#selecionar somente os nomes das turmas que ingressam em 2024
SELECT nomeTurma FROM turmas WHERE anoIngresso = 2024;


