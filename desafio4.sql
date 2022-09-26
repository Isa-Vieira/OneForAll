SELECT us.nome AS usuario, IF(MAX(YEAR(historico_de_reproducoes.data_reproducoes)) >= '2021', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico_de_reproducoes 
ON us.id_usuario = SpotifyClone.historico_de_reproducoes.id_usuario
GROUP BY us.id_usuario
ORDER BY us.nome;