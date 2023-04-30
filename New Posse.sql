/*
##################################################################################
# Date Modified: 01/17/2018
# Purpose of Code: New Posse for Executive Dashboard
# Written by: Brian Roskelley
# Updated by:
# Tableau: N/A


##################################################################################
*/


New Posse
select count (distinct a.order_number), d.country_code
from admin.ashdb a join admin.dstdb d on a.dist_id = d.dist_id join admin.asldb l on a.order_number = l.order_number
where a.entry_date between '2019-10-08 00:00:00' and '2019-10-08 23:59:59'
and a.status = '1'
group by d.country_code

select distinct a.dist_id, a.entry_date, a.order_number, a.status, d.country_code
from admin.ashdb a join admin.dstdb d on a.dist_id = d.dist_id join admin.asldb l on a.order_number = l.order_number
where a.entry_date between '2019-09-07 00:00:00' and '2019-09-07 23:59:59'
and a.status = '1'
group by a.dist_id, a.entry_date, a.order_number, l.item_code, a.status, d.country_code
