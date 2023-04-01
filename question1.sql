#QUESTION :Show the pass percentage in each course-------------------------

use school;
select  distinct course_name , format(count(course_name) /max(student_id) , 2)  as Pass_percentage_each_course 
from courses c 
join scores s 
using(course_id)
where score >= 10
group by course_name
