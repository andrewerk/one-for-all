SELECT ANY_VALUE(artists.artist_name) AS 'artista', albums.album_name AS 'album', COUNT(favorites.user_id) AS 'seguidores' FROM SpotifyClone.albums AS albums
INNER JOIN SpotifyClone.artists AS artists ON artists.artist_id = albums.artist_id
INNER JOIN SpotifyClone.artist_user AS favorites ON favorites.artist_id = albums.artist_id
GROUP BY albums.album_name
ORDER BY seguidores DESC, artista, album;
