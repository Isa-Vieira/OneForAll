SELECT N.nome AS artista, 
A.album AS album
FROM SpotifyClone.artista AS N,
SpotifyClone.albums AS A
WHERE N.nome = 'Elis Regina'
AND N.id_artista = A.id_artista
ORDER BY album ASC;