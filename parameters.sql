Declare @MinSales int = 30000;
Declare @MaxSales int = 40000;
--set @MinSales = 30000;  --this is called an assignment - store 30000 as @MinSales
--Set @MaxSales = 40000;

Select
*
from
Customers
where sales >=@MinSales and Sales <=@MaxSales;
----Education db
use EdDb;
Declare @SAT as int = 1200
Declare @GPA as decimal = 3
--Set @SAT = 1200
--Set @GPA = 3

Select
*
from
Student

where SAT >=@SAT and GPA >=@GPA