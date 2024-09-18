select  *
from import.master_plan
LIMIT 1000;

select count(*)
from import.master_plan;

select target, count(*) as count
from import.master_plan
group by target
order by count desc;
