CREATE VIEW [dbo].[Supply_Order_Forecast] AS
SELECT
    product_code,
    refinery_code,
    depot_code,
    transfer_code,
    production_record_code,
    SUM(supplied_quantity) AS supplied_quantity
FROM
    [XDB].[dbo].[Supply_order]
WHERE
    YEAR(GETDATE()) - 1 = YEAR(start_date)
    OR YEAR(GETDATE()) - 1 = YEAR(end_date)
GROUP BY
    product_code,
    refinery_code,
    depot_code,
    transfer_code,
    production_record_code
GO
