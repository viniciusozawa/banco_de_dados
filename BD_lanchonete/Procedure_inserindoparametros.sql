delimiter //
CREATE PROCEDURE proc_imprimeFrase(IN frase VARCHAR(300))
BEGIN
	SELECT frase AS mensagem;
END //
delimiter ;

CALL proc_imprimeFrase("Exemplo de procedimento com parametro");
CALL proc_imprimeFrase("Boa tarde");