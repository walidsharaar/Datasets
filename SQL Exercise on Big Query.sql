--- Write a query which returns total number of product owned by each gender in their respective country.

SELECT Gender, Geography, sum(NumOfProducts)
from `big-query-348313.Churn.Churn`
group by 1,2;

-- Write a query which compares all the active and inactive users who have a credit card?

select IsActiveMember, count(IsActiveMember)
from `big-query-348313.Churn.Churn`
where HasCrCard=1
group by 1;


-- Write a query which returns all the users whose surname starts with C and credit score is greater than 700

