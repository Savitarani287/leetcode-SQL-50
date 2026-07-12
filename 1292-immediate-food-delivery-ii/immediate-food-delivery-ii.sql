# Write your MySQL query statement below
select  
    round(
        sum(
            if (earlier_order =earlier_pref_delivery_date,1,0))
            *100 / count(customer_id), 
            2) 
            as immediate_percentage
        from
        (select delivery_id,
        customer_id ,
        min(order_date) as earlier_order,
        min(customer_pref_delivery_date) as earlier_pref_delivery_date
    from Delivery 
    group by customer_id ) as new_table