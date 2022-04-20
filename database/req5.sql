SELECT country, AVG(M_Cm) as 'Average Male in CM', AVG(F_Cm) as 'Average Famale in CM'
FROM heights  
GROUP BY country
limit 5;