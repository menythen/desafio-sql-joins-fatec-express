SELECT
    c.id_cliente,
    c.nome,
    c.email,
    c.cidade
FROM clientes c
LEFT JOIN pedidos p 
    ON c.id_cliente = p.id_cliente
WHERE p.id_pedido IS NULL;