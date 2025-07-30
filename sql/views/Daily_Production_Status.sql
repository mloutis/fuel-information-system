create view [dbo].[Daily_Production_Status] as
select *
from Production_Record
where production_date = convert(date, GETDATE())
GO
