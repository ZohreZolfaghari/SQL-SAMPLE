#QUESTION :  "1.5"  should be added to the salaries of the two teachers whose average score was the highest
use school;
select 
first_name ,
last_name ,
salary ,
salary + 1.5 as new_salary ,
work_experience ,
average_scores_each_course
from courses co
join(
select  distinct course_name , 
format(avg(score) , 1) as  average_scores_each_course 
from courses c 
join scores s 
using(course_id)
group by course_name
)table_result 
on  co.course_name = table_result.course_name 
join teachers t 
using(teacher_id)
order by average_scores_each_course desc
limit 2
