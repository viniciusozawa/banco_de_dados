#Descrever os campos de uma tabela 
DESC categoria;

#Inserir dad0s preenchendo todos os campos de uma tabela

INSERT INTO categoria VALUES(NULL, "Familiares");

#Inserir dad0s preenchendo apenas os campos obrigatórios exceto a chave 

INSERT INTO categoria(nomeCategoria) VALUES("Amigos");