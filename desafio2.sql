SELECT DISTINCT COUNT(songs.id) as "cancoes",  COUNT(DISTINCT artists.id ) as "artistas", COUNT(DISTINCT albums.id) as "albuns"
FROM artists as artists
JOIN albums as albums
ON albums.artist_id = artists.id
JOIN songs as songs
ON songs.album_id = albums.id;