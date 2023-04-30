/*
##################################################################################
# Date Modified: 01/17/2018
# Purpose of Code: Revenue report for Executive Dashboard
# Written by: Brian Roskelley
# Updated by:
# Tableau: N/A


##################################################################################
*/


--Revenue broken out
select o.order_number, o.dist_id, o.post_date, o.pv_date, o.price_1, o.sales_tax, o.freight_amount, o.tot_invce_amount, o.ship_to_country
from admin.odh1db o
where o.post_date between '2019-10-10' and '2019-10-10'
and o.status in (2,3,4,5)
and type not in ('C','R')
group by o.order_number, o.dist_id, o.post_date, o.pv_date, o.price_1, o.sales_tax, o.freight_amount, o.tot_invce_amount, o.ship_to_country
union all
select o.order_number, o.dist_id, o.post_date, o.pv_date, o.price_1, o.sales_tax, o.freight_amount, o.tot_invce_amount, o.ship_to_country
from admin.odh2db o
where o.post_date between '2019-10-10' and '2019-10-10'
and o.status in (2,3,4,5)
and type not in ('C','R')
group by o.order_number, o.dist_id, o.post_date, o.pv_date, o.price_1, o.sales_tax, o.freight_amount, o.tot_invce_amount, o.ship_to_country
union all
select o.order_number, o.dist_id, o.post_date, o.pv_date, o.price_1, o.sales_tax, o.freight_amount, o.tot_invce_amount, o.ship_to_country
from admin.odh3db o
where o.post_date between '2019-10-10' and '2019-10-10'
and o.status in (2,3,4,5)
and type not in ('C','R')
group by o.order_number, o.dist_id, o.post_date, o.pv_date, o.price_1, o.sales_tax, o.freight_amount, o.tot_invce_amount, o.ship_to_country
union all
select o.order_number, o.dist_id, o.post_date, o.pv_date, o.price_1, o.sales_tax, o.freight_amount, o.tot_invce_amount, o.ship_to_country
from admin.odh4db o
where o.post_date between '2019-10-10' and '2019-10-10'
and o.status in (2,3,4,5)
and type not in ('C','R')
group by o.order_number, o.dist_id, o.post_date, o.pv_date, o.price_1, o.sales_tax, o.freight_amount, o.tot_invce_amount, o.ship_to_country



--Revenue sum
select sum (o.tot_invce_amount), o.post_date, o.ship_to_country
from admin.odh1db o
where o.post_date between '2019-05-01' and '2019-05-01'
and o.status in (2,3,4,5)
and type not in ('C','R')
group by o.post_date, o.ship_to_country
union all
select sum (o.tot_invce_amount), o.post_date, o.ship_to_country
from admin.odh2db o
where o.post_date between '2019-05-01' and '2019-05-01'
and o.status in (2,3,4,5)
and type not in ('C','R')
group by o.post_date, o.ship_to_country
union all
select sum (o.tot_invce_amount), o.post_date, o.ship_to_country
from admin.odh3db o
where o.post_date between '2019-05-01' and '2019-05-01'
and o.status in (2,3,4,5)
and type not in ('C','R')
group by o.post_date, o.ship_to_country
union all
select sum (o.tot_invce_amount), o.post_date, o.ship_to_country
from admin.odh4db o
where o.post_date between '2019-05-01' and '2019-05-01'
and o.status in (2,3,4,5)
and type not in ('C','R')
group by o.post_date, o.ship_to_country
