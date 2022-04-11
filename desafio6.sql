SELECT MIN(plans.price) as "faturamento_minimo",
   MAX(plans.price) as "faturamento_maximo",
  ROUND(AVG(plans.price),2)  as "faturamento_medio",
  SUM(plans.price) as "faturamento_total"
FROM plans
JOIN assingments as assingments
ON assingments.plan_id = plans.id