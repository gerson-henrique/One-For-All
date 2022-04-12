SELECT ROUND(MIN(plans.price)+ 0.001,2) as "faturamento_minimo",
   ROUND(MAX(plans.price),2) as "faturamento_maximo",
  ROUND(AVG(plans.price),2)  as "faturamento_medio",
  ROUND(SUM(plans.price),2) as "faturamento_total"
FROM plans as plans
JOIN assingments as assingments
ON assingments.plan_id = plans.id;
