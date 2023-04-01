#Question : Display the names of 5 students with the highest GPA-------

use school;
select   
s.student_id ,
format(sum(c.Coeff * s.score)/ sum(coeff) , 2)  as GPA  , 
st.name
from scores s 
JOIN courses c using (course_id )
JOIN students st  on st.id = s.student_id
group by s.student_id 
ORDER BY GPA DESC
LIMIT 5;

