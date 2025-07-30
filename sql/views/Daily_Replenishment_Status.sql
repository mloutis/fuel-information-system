create view [dbo].[Daily_Replenishment_Status] as
select *
from Replenishment_Order
where loading_date = convert(date, GETDATE()) 
   or unloading_date = convert(date, GETDATE())
GO
