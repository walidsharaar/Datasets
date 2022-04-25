-- Count number of active member based on country

select Geography, count(IsActiveMember) from `big-query-348313.Churn.Churn` 
where IsActiveMember=1
group by Geography;

--list sum of the products based on gender and country
select Gender, Geography, sum(NumOfProducts)
from `big-query-348313.Churn.Churn`
where Gender='Male'
group by 1,2;

--list all member and group them by active
select IsActiveMember, count(IsActiveMember)
from `big-query-348313.Churn.Churn`
where HasCrCard=1
group by 1;

-- list those surname starts with letter C and has greater than 700 credit score
Select surname,CreditScore from `big-query-348313.Churn.Churn`
where Surname like 'C%'  and CreditScore>700
