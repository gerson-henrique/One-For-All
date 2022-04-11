SELECT users.name as "usuario",
COUNT(DISTINCT history.song_id) "qtde_musicas_ouvidas",
ROUND(SUM(songs.duration_seconds)/60,2)  as "total_minutos"
FROM users as users
JOIN history as history
ON history.user_id = users.id
JOIN songs as songs
ON history.song_id = songs.id
GROUP BY users.name;