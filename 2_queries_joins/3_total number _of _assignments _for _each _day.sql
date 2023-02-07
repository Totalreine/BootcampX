select day, count(day) as total_per_day
from assignments
group by day 
order by day;