CREATE VIEW [dbo].[General_Supply_Forecast] AS
SELECT
    COUNT(SO.product_code) AS products_supplied_count,
    COUNT(SO.refinery_code) AS refineries_supplied_count,
    COUNT(SO.depot_code) AS beneficiary_depots_count,
    SO.transfer_code,
    SUM(SO.supplied_quantity) AS total_supplied_quantity,
    COUNT(RO.product_code) AS products_replenished_count,
    COUNT(RO.depot_code_emitter) AS emitting_depots_count,
    COUNT(RO.depot_code_receiver) AS receiving_depots_count,
    RO.transporter_code,
    SUM(RO.quantity_delivered) AS total_quantity_delivered
FROM
    [XDB].[dbo].[Supply_order] SO
    CROSS JOIN [XDB].[dbo].[Replenishment_Order] RO
WHERE
    (
        YEAR(GETDATE()) - 1 = YEAR(SO.start_date)
        OR YEAR(GETDATE()) - 1 = YEAR(SO.end_date)
    )
    AND
    (
        YEAR(GETDATE()) - 1 = YEAR(RO.loading_date)
        OR YEAR(GETDATE()) - 1 = YEAR(RO.unloading_date)
    )
GROUP BY
    SO.transfer_code,
    RO.transporter_code
GO
