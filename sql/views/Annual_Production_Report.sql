CREATE VIEW [dbo].[Annual_Production_Report] AS
SELECT
    SUM(quantity_produced) AS annual_production_quantity,
    SUM(quantity_produced - remaining_quantity) AS annual_sent_quantity,
    product_code
FROM
    Production_Record
WHERE
    YEAR(production_date) = YEAR(GETDATE()) - 1
GROUP BY
    product_code
GO
