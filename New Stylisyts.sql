/*
##################################################################################
# Date Modified: 01/17/2018
# Purpose of Code: New Stylists for Executive Dashboard
# Written by: Brian Roskelley
# Updated by:
# Tableau: N/A


##################################################################################
*/


select count (distinct dist_id), country_code
from admin.dstdb
where entry_date between '2019-10-08 00:00:00' and '2019-10-08 23:59:59'
and dist_status = 'D'
group by country_code

select dist_id, dist_status, entry_date, country_code
from admin.dstdb
where entry_date between '2019-09-07 00:00:00' and '2019-09-07 23:59:59'
and dist_status = 'D'



--All Stylists (run queries from both partitions and take the highest number)
SELECT count (DISTINCT dist_id), country_code
FROM admin.xwt201910a
where vol1 >= '200'
and dist_id not in ('3')
group by country_code

SELECT count (DISTINCT dist_id), country_code
FROM admin.xwt201910b
where vol1 >= '200'
and dist_id not in ('3')
group by country_code
