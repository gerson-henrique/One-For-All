SELECT users.name as "usuario",
 IF( TIMEDIFF(MAX(history.linstening_date), "2020-12-31 23:59:59") > 0,"Usuário ativo","Usuário inativo") "condicao_usuario"
FROM users as users
JOIN history as history
ON history.user_id = users.id
GROUP BY users.name
ORDER BY users.name;
