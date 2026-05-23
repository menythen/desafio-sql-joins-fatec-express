SELECT
    p.id_pedido,
    c.nome AS nome_cliente,
    c.cidade,
    v.nome AS nome_vendedor,
    v.regiao,
    SUM(i.quantidade * i.preco_unitario) AS subtotal,
    p.frete,
    SUM(i.quantidade * i.preco_unitario) + p.frete AS total
FROM pedidos p
INNER JOIN clientes c 
    ON p.id_cliente = c.id_cliente
INNER JOIN vendedores v 
    ON p.id_vendedor = v.id_vendedor
INNER JOIN itens_pedido i 
    ON p.id_pedido = i.id_pedido
WHERE p.status = 'entregue'
GROUP BY 
    p.id_pedido,
    c.nome,
    c.cidade,
    v.nome,
    v.regiao,
    p.frete
ORDER BY total DESC;