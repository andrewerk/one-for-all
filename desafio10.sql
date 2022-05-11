SELECT songs.song_name AS 'nome', COUNT(reproduction.song_id)  AS 'reproducoes' FROM SpotifyClone.songs AS songs
INNER JOIN SpotifyClone.user_reproductions AS reproduction ON songs.song_id = reproduction.song_id
INNER JOIN SpotifyClone.users AS users ON users.user_id = reproduction.user_id
WHERE users.plan_id IN (1,3)
GROUP BY songs.song_name
ORDER BY songs.song_name;
