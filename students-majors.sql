Select
*
	from dbo.Student s
	left join dbo.Major m  on s.MajorId = m.Id
	where GPA not between 3.5 and 3.99
	order by GPA desc, SAT desc