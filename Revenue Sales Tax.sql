/*
##################################################################################
# Date Modified: 08/25/2022
# Purpose of Code: Revenue Sales Tax Calc
# Written by: Brian Roskelley
# Updated by:
# Tableau: N/A


##################################################################################
*/


select DISTINCT (o.order_number), o.price_1, o.freight_amount, o.tot_invce_amount, o.ship_state, o.banking_date, o.sales_tax
from admin.odh1db o
where o.banking_date between '2021-07-01' and '2022-06-30'
and o.status in (2,3,4,5)
and type not in ('C','R')
and o.ship_to_country = 'USA'
union all
select DISTINCT (o.order_number), o.price_1, o.freight_amount, o.tot_invce_amount, o.ship_state, o.banking_date, o.sales_tax
from admin.odh2db o
where o.banking_date between '2021-07-01' and '2022-06-30'
and o.status in (2,3,4,5)
and type not in ('C','R')
and o.ship_to_country = 'USA'
union all
select DISTINCT (o.order_number), o.price_1, o.freight_amount, o.tot_invce_amount, o.ship_state, o.banking_date, o.sales_tax
from admin.odh3db o
where o.banking_date between '2021-07-01' and '2022-06-30'
and o.status in (2,3,4,5)
and type not in ('C','R')
and o.ship_to_country = 'USA'
union all
select DISTINCT (o.order_number), o.price_1, o.freight_amount, o.tot_invce_amount, o.ship_state, o.banking_date, o.sales_tax
from admin.odh4db o
where o.banking_date between '2021-07-01' and '2022-06-30'
and o.status in (2,3,4,5)
and type not in ('C','R')
and o.ship_to_country = 'USA'