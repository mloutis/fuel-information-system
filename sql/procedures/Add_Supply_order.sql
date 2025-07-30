create procedure [dbo].[Add_Supply_order]
(
    @product_code varchar(5),
    @depot_code varchar(4),
    @transfer_code varchar(5),
    @refinery_code varchar(4),
    @production_record_code varchar(12),
    @supplied_quantity int,
    @supplied_elements_count int,
    @start_date date,
    @end_date date,
    @notes_supply_order varchar(50)
)
as 
begin
    declare @supply_order_number varchar(12), @n int

    set @supply_order_number = @product_code + '/' + RIGHT(STR(YEAR(@end_date),4),2) + '/'

    select @n = COUNT(*) + 1 from Supply_order

    if @n < 10 
        set @supply_order_number = @supply_order_number + '00' + STR(@n,1)
    else if @n < 100 
        set @supply_order_number = @supply_order_number + '0' + STR(@n,2)
    else 
        set @supply_order_number = @supply_order_number + STR(@n,3)

    insert into Supply_order (
        supply_order_number, product_code, depot_code, transfer_code,
        refinery_code, production_record_code, supplied_quantity,
        supplied_elements_count, start_date, end_date, notes_supply_order
    )
    values (
        @supply_order_number, @product_code, @depot_code, @transfer_code,
        @refinery_code, @production_record_code, @supplied_quantity,
        @supplied_elements_count, @start_date, @end_date, @notes_supply_order
    )
end;
