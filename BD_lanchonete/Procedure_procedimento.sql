delimiter //
CREATE PROCEDURE proc_alomundo()
BEGIN
	SELECT "alo mudo" AS mensagem;
	
	
	
END //
delimiter ;

DROP PROCEDURE proc_alomundo;
call proc_alomundo();