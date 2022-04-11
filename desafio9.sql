SELECT COUNT(users.name) as "quantidade_musicas_no_historico"
FROM history
JOIN users as users
ON users.id = history.user_id
WHERE users.name LIKE "Bill"