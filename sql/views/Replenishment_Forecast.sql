CREATE VIEW [dbo].[Replenishment_Forecast] AS
SELECT
    depot_code_emitter,
    depot_code_receiver,
    product_code,
    transporter_code,
    SUM(quantity_delivered) AS quantity_delivered
FROM
    [XDB].[dbo].[Replenishment_Order]
WHERE
    YEAR(GETDATE()) - 1 = YEAR(loading_date)
    OR YEAR(GETDATE()) - 1 = YEAR(unloading_date)
GROUP BY
    depot_code_emitter,
    depot_code_receiver,
    product_code,
    transporter_code
GO
