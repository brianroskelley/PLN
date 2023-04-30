/*
##################################################################################
# Date Modified: 10/18/2020
# Purpose of Code: Quarter/Half/Million/2M/3M/4M Earners
# Written by: Brian Roskelley
# Updated by:
# Tableau: N/A


##################################################################################
*/


select sum (check_amount), dist_id from admin.erndb
--where dist_id in ('insert list of dist_id')
group by dist_id

--Alt Query for By Design totals
select sum (check_amount) from admin.erndb
where dist_id = '179'
and pv_date between '201610' and '201907'