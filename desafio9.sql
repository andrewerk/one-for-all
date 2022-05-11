SELECT COUNT(reproduction.song_id) AS 'quantidade_musicas_no_historico' FROM SpotifyClone.user_reproductions AS reproduction
INNER JOIN SpotifyClone.users AS users ON users.user_id = reproduction.user_id
WHERE users.username = 'Bill'
GROUP BY users.username;
