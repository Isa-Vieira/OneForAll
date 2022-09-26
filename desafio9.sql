SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes AS H
INNER JOIN SpotifyClone.usuario AS U
ON H.id_usuario = U.id_usuario
WHERE U.nome = 'Barbara Liskov' 