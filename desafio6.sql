SELECT 
FORMAT(MIN(preco),2) AS faturamento_minimo,
FORMAT(MAX(preco),2) AS faturamento_maximo,
FORMAT(AVG(preco),2) AS faturamento_medio,
FORMAT(SUM(preco),2) AS faturamento_total
FROM SpotifyClone.plano
INNER JOIN SpotifyClone.usuario
ON plano_id_plano = id_plano;