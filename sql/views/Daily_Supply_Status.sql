create view [dbo].[Daily_Supply_Status] as
select *
from Supply_order
where start_date = convert(date, GETDATE()) 
   or end_date = convert(date, GETDATE())
GO
