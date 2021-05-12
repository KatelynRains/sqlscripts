--Display states and number of students in each
Select 
StateCode,
count(Id) Students
from
Student
where SAT < 1000
group by
StateCode
having count(Id) >1
order by count(Id) desc