SELECT artists.name as artista, albums.name as album
FROM artists
JOIN albums as albums
ON albums.artist_id = artists.id
WHERE artists.name LIKE "Walter Phoenix";
