SELECT songs.song_name AS 'cancao', COUNT(reproduction.song_id) AS 'reproducoes' FROM SpotifyClone.songs AS songs
INNER JOIN SpotifyClone.user_reproductions AS reproduction ON songs.song_id = reproduction.song_id
GROUP BY songs.song_name
ORDER BY reproducoes DESC, songs.song_name
LIMIT 2;
