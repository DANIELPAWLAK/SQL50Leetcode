select st.student_id, st.student_name, sb.subject_name, count(ex.student_id) as attended_exams
from Students st
cross join subjects sb
left join Examinations ex on st.student_id = ex.student_id and sb.subject_name = ex.subject_name
group by 1,3
order by 1,3
