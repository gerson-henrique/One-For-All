SELECT songs.name as cancao, COUNT(history.song_id) as reproducoes
FROM songs as songs
JOIN history as history
on history.song_id = songs.id
GROUP BY songs.name
ORDER BY reproducoes DESC, songs.name
LIMIT 2;