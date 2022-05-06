SELECT COUNT(DISTINCT songs.song_id) AS 'cancoes', COUNT(DISTINCT artists.artist_id) AS 'artistas', COUNT(DISTINCT songs.album_id) AS 'albuns'
FROM SpotifyClone.songs AS songs
INNER JOIN SpotifyClone.artists AS artists;
