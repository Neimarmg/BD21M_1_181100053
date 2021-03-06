﻿-- Exe 11

CREATE or replace FUNCTION get_total_bonus() RETURNS TABLE (
cpf VARCHAR (15),
TotalBonus DOUBLE PRECISION (10,2)) AS $$
BEGIN
RETURN 
	QUERY SELECT INTO 
		vendas.cpf_cliente, 
		SUM((vendas_itens.quantidade_item * produtos.preco_unitario)*bonus.bonus/100)) AS Bonus_Total_Clinte
		FROM vendas, bonus, vendas_itens, produtos 
        WHERE vendas.cpf_cliente = bonus.cpf_cliente;
RETURN $$;
END;
$$ LANGUAGE 'plpgsql'

SELECT * FROM get_total_bonus();