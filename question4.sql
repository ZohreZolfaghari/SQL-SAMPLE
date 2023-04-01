#last_name containing "di" or "dp" and first_name ending in "n"
use school;
select *
from teachers
where last_name regexp  "d[e p]" and first_name regexp "n$"