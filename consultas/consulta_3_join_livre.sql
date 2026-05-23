SELECT
    pr.categoria,
    SUM(i.quantidade * i.preco_unitario) AS receita_total
FROM itens_pedido i
INNER JOIN produtos pr 
    ON i.id_produto = pr.id_produto
INNER JOIN pedidos p 
    ON i.id_pedido = p.id_pedido
WHERE p.status = 'entregue'
GROUP BY pr.categoria
ORDER BY receita_total DESC;