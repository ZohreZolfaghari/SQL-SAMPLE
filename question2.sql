#QUESTION : Show the average score of each course-----------------------------

use school;
select  distinct course_name , 
format(avg(score) , 1) as  average_scores_each_course 
from courses c 
join scores s 
using(course_id)
group by course_name
