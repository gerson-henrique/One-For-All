SELECT songs.name as nome, COUNT(songs.name) as reproduções
FROM songs as songs
JOIN history as history
ON history.song_id = songs.id
JOIN assingments as assingments
ON assingments.user_id = history.user_id
WHERE assingments.plan_id = 3 || assingments.plan_id = 1
GROUP BY songs.name;