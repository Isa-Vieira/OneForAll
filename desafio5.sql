SELECT SpotifyClone.cancoes.nome AS cancao, COUNT(id_usuario) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes
INNER JOIN SpotifyClone.cancoes
ON SpotifyClone.historico_de_reproducoes.id_cancao = SpotifyClone.cancoes.id_cancoes
GROUP BY id_cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;