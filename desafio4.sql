SELECT users.username AS 'usuario',  IF(MAX(YEAR(reproduction.reproduction_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario' FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.user_reproductions AS reproduction ON users.user_id = reproduction.user_id
GROUP BY users.username;
