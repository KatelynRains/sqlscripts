---find multiples of 3 less than 100
declare @nbr int = 3;
while @nbr >1 begin
	print @nbr;
	set @nbr = @nbr+3;
	if @nbr >100 begin
		break
		end;
end
Print 'Done..';

--dont print any numbers that are also divisible by 9
declare @nbr int = 3;
while @nbr >1 begin
	if @nbr % 9 = 0  begin
	set @nbr = @nbr+3;
	continue;
	end
	print @nbr;
	set @nbr = @nbr + 3;
	if @nbr+3 > 100 begin 
		break;
	end;
end;
Print 'Done..';