SELECT MIN(plans.price) AS 'faturamento_minimo', MAX(plans.price) AS 'faturamento_maximo', ROUND(AVG (plans.price),2) AS 'faturamento_medio', SUM(plans.price) AS 'faturamento_total' FROM SpotifyClone.users
INNER JOIN SpotifyClone.plans AS plans ON plans.plan_id = users.plan_id;
