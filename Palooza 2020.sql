/*
##################################################################################
# Date Modified: 10/18/2020
# Purpose of Code: Leadership Academy Attendee Palooza
# Written by: Brian Roskelley
# Updated by:
# Tableau: N/A

USA/CAN

1000/2000/3000 PRV Club from August 1st 2019 to July 31st 2020
If they hit 3000 6 months out of the year but then 1000 the other 6 months, they are in the 1000 club

Mover n Shaker
Became a stylist within the Plunder Year (August 1 2019 to July 31st 2020) and hit all levels of powerstart.  Week 201931 to 202032

Fab 4 (400 PRV 12 out of 12 months in Plunder year)
500 PRV 11 months out of the year and then 400 PRV for 1 month, they are in the Fab 4
400 PRV 11 months out of the year and then 300 PRV for 1 month, they are not recognized.

Fab 5 (500 PRV 12 out of 12 months in Plunder year)

First Palooza attendee
(Not going to use this)

Top 100 PRV in the Plunder year for PRV

Top 100 reruiter in the Plunder year for recruits (Status D recruits)

##################################################################################
*/

--All Stylists that enrolled since 2014 that are attending Palooza
select x.paid_rank, d.dist_id, d.roman_name_1, year(d.entry_date), d.country_code, d.sponsor_dist_id from admin.dstdb d join admin.xwt202007a x on d.dist_id = x.dist_id
where d.dist_status = 'D'

--Lifetime Rank as of July 31st
select dist_id, status, end_rank, paid_rank, nm1
from admin.bwt202007
where status = 'D'

--1000/2000/3000 PRV Club
select dist_id, wrk30 as 'Aug', wrk29 as 'Sept', wrk28 as 'Oct', wrk27 as 'Nov', wrk26 as 'Dec', wrk25 as 'Jan', wrk24 as 'Feb', wrk23 as 'March', wrk22 as 'April', wrk21 as 'May', vol1 as 'June' from admin.bwt202006
where status = 'D'

--Mover n Shaker
select
dist_id,
nm1,
bnc1 as '40 day bonus Selling',
bnc2 as '70 day bonus Selling',
bnc3 as '100 day bonus Selling',
bnc4 as '$100 cash Sponsoring',
bnc5 as '100 Jewelry 1 Sponsoring',
bnc6 as '100 Jewelry 2 Sponsoring',
bnc7 as '$150 Jewelry and $100 cash'
from admin.bwts20190
where dist_id in ('insert list')