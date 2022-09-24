SELECT us.nome AS usuario, COUNT(historico_de_reproducoes.id_usuario) AS qt_de_musicas_ouvidas,
ROUND(SUM(SpotifyClone.cancoes.duracao / 60), 2) AS total_minutos
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico_de_reproducoes
ON us.id_usuario = SpotifyClone.historico_de_reproducoes.id_usuario
INNER JOIN SpotifyClone.cancoes
ON SpotifyClone.historico_de_reproducoes.id_cancao = SpotifyClone.cancoes.id_cancoes
GROUP BY us.id_usuario
ORDER BY us.nome;