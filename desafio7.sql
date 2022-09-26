SELECT N.nome AS artista,
A.album AS album,
COUNT(fk_artista)  AS seguidores
FROM SpotifyClone.artista AS N
INNER JOIN SpotifyClone.albums AS A
ON N.id_artista = A.id_artista
INNER JOIN SpotifyClone.seguidores AS S
ON fk_artista = N.id_artista
GROUP BY id_album
ORDER BY seguidores DESC, artista ASC;