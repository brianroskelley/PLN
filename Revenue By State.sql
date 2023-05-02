/*
##################################################################################
# Date Modified: 08/25/2022
# Purpose of Code: Revenue by State
# Written by: Brian Roskelley
# Updated by:
# Tableau: N/A


##################################################################################
*/


select DISTINCT (o.order_number), o.tot_invce_amount, o.ship_state
from admin.odh1db o
where o.banking_date between '2021-01-01' and '2021-12-31'
and o.status in (2,3,4,5)
and type not in ('C','R')
and o.ship_to_country = 'USA'
union all
select DISTINCT (o.order_number), o.tot_invce_amount, o.ship_state
from admin.odh2db o
where o.banking_date between '2021-01-01' and '2021-12-31'
and o.status in (2,3,4,5)
and type not in ('C','R')
and o.ship_to_country = 'USA'
union all
select DISTINCT (o.order_number), o.tot_invce_amount, o.ship_state
from admin.odh3db o
where o.banking_date between '2021-01-01' and '2021-12-31'
and o.status in (2,3,4,5)
and type not in ('C','R')
and o.ship_to_country = 'USA'
union all
select DISTINCT (o.order_number), o.tot_invce_amount, o.ship_state
from admin.odh4db o
where o.banking_date between '2021-01-01' and '2021-12-31'
and o.status in (2,3,4,5)
and type not in ('C','R')
and o.ship_to_country = 'USA'