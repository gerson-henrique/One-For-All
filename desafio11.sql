SELECT songs.name as nome_musica, 
  CASE 
    WHEN songs.name LIKE "%Streets" THEN REPLACE(songs.name,"Streets","Code Review")
    WHEN songs.name LIKE "%Her Own" THEN REPLACE(songs.name,"Her Own","Trybe")
    WHEN songs.name LIKE "%Inner Fire" THEN REPLACE(songs.name,"Inner Fire","Project")
    WHEN songs.name LIKE "%Silly" THEN REPLACE(songs.name,"Silly","Nice")
    WHEN songs.name LIKE "%Circus" THEN REPLACE(songs.name,"Circus","Pull Request")
  END AS novo_nome
FROM songs as songs
  HAVING novo_nome IS NOT NULL
  ORDER BY songs.name;
