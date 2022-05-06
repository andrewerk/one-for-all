SELECT users.username AS 'usuario', COUNT(reproduction.song_id) AS 'qtde_musicas_ouvidas', ROUND(SUM(songs.lenght_seconds)/60,2) AS 'total_minutos' FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.user_reproductions AS reproduction ON users.user_id = reproduction.user_id
INNER JOIN SpotifyClone.songs AS songs ON songs.song_id = reproduction.song_id
GROUP BY users.username;
