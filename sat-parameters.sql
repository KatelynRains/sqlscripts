Declare @SAT as int
set @sat = (select min(SAT) from (select top 4 SAT from Student order by SAT desc)s)

--Set @SAT = 1200
--Set @GPA = 3

Select
*
from
Student

where SAT >=@SAT 