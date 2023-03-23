select *
from neww..Sheet1$ ;

--top 100 unicorn startups
select top 100 NAME, [Valuation(in million dollars)]
from neww..Sheet1$
WHERE [Valuation(in million dollars)] >100
ORDER BY 2 desc;

--companies with high response rate form employees
select top 6 name, rating, review
from neww..Sheet1$
where rating > 4
order by review desc

--oldest
select top 20 name,[age(in years)], MaxEmployees
from neww..Sheet1$
order by 2 desc

delete from neww..Sheet1$ where [age(in years)] = 116

-- average year growth 
select top 100 name, [Valuation(in million dollars)]/[age(in years)] as averageyearlygrowth
from neww..Sheet1$
order by 2 desc

-- companies book loss last year
select top 20 name,[profit(for the last FY in million dollars)] 
from neww..Sheet1$
where [profit(for the last FY in million dollars)] <0
order by 2


--location
select name,place
from neww..Sheet1$


