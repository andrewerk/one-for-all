SELECT songs.song_name AS 'nome_musica', 
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(songs.song_name, 'Streets', 'Code Review'), 'Her Own', 'Trybe'), 'Inner Fire', 'Project'), 'Silly', 'Nice'), 'Circus', 'Pull Request') AS 'novo_nome'
FROM SpotifyClone.songs AS songs
WHERE songs.song_name REGEXP 'Streets|Her Own|Inner Fire|Silly|Circus'
ORDER BY nome_musica;

-- Sugestão de utilizar REGEXP a partir do link  https://stackoverflow.com/questions/4172195/mysql-like-multiple-values
