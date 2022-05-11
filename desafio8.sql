SELECT ANY_VALUE(artists.artist_name) AS 'artista', albums.album_name AS 'album' FROM SpotifyClone.albums AS albums
INNER JOIN SpotifyClone.artists AS artists ON artists.artist_id = albums.artist_id
WHERE artists.artist_name = 'Walter Phoenix'
GROUP BY albums.album_name
ORDER BY  album;
