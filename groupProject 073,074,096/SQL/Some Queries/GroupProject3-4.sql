SELECT MIN(total),MAX(total),AVG(total),SUM(total) 
FROM transactions
WHERE quantity BETWEEN 5 AND 13;