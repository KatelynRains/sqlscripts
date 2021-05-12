select
Firstname,
Lastname,
StateCode,
SAT,
GPA,
case 
	when SAT > 1200 then 'A'
	when SAT between 1000 and 1999 then 'B'
	when SAT <1000 then 'C' else NULL 
end as 'ABC'

from 
Student