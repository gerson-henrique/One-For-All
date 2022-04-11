SELECT artists.name as artistas ,albums.name as album,COUNT(following.user_id) as seguidores
FROM artists as artists
JOIN albums as albums
ON albums.artist_id = artists.id
JOIN following as following
ON following.artist_id = artists.id
GROUP BY artists.name, albums.name
ORDER BY seguidores DESC,artists.name, albums.name ;