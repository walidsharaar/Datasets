--- Write a query which returns total number of product owned by each gender in their respective country.

SELECT Gender, Geography, sum(NumOfProducts)
from `big-query-348313.Churn.Churn`
group by 1,2;
