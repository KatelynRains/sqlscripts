--*************************************
-- LIST OF CLASSES AND INSTRUCTORS
--*************************************
Select
c.Id
,c.Code
,c.Subject
,c.Section
--,c.InstructorId
--,i.Id
,i.Firstname + ' ' + i.Lastname FullName
,concat(i.Firstname,' ',i.Lastname) FullName2
--,i.YearsExperience
--,i.IsTenured
from Class c
left join Instructor i on c.InstructorId = i.Id
where Section >=300 and Section<400
order by Section