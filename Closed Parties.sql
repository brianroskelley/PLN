/*
##################################################################################
# Date Modified: 01/17/2018
# Purpose of Code: Closed Parties for Executive Dashboard
# Written by: Brian Roskelley
# Updated by:
# Tableau: N/A


##################################################################################
*/


--Closed Parties
select count (distinct party_number), country_code
from admin.ptodb 
where end_date between '2019-10-08 00:00:00' and '2019-10-08 23:59:59'
group by country_code

select distinct dist_id, party_number, end_date, country_code
from admin.ptodb 
where end_date between '2019-09-07 00:00:00' and '2019-09-07 23:59:59'
group by dist_id, party_number, end_date, country_code
