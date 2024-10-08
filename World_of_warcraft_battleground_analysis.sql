/*1. How many times did the alliance win and how many times did the horde win? */ 

with match_won as (
select 
Code 
,Faction 
,count(distinct Win) 	as Win_or_lose
from wowwg w 
group by 1,2
)
select 
wm.Faction
,sum(win_or_lose)		as Number_of_wins 
from 
match_won wm
group by 1


/* 2. According to question one, how many times alliance or horde wins but as a full-fledged victory?
 
 (note, if there are not enough players in battleground, the game ends after 3 minutes, leaving the winner with the best progress so far or when the allotted time expires.
 Full-fledged win in Warsong Gulch occurs when a team captures the flag from the opponent's base to its base three times)  */ 

select 
wi.inner
,count(wi.Winner)					as Total_wins
from
(
select 
Code
,case 
	when sum(case When w.Faction = 'Alliance' then w.FC else 0 end) = 3 then 'Alliance Won'
	when sum(case When w.Faction = 'Horde' then w.FC else 0 end) = 3 then 'Horde Won'
	else 'Walkover'
end as Winner
from wowwg w 
group by 1
order by 1
) wi
group by 1
order by 2


/*3.Create ranking of classes that make the highest average damage done. */ 

select
Class 
,round(avg(DD),0) 						as Average_damage_done
,row_number () over				
(order by round(avg(DD),0)  desc) 		as Dps_ranking
from wowwg w 
where Rol ='dps'
group by 1
order by 2 desc

/*4. What is the difference between the average damage done for all classes and between the two factions? */


select
Class 
,Faction
,round(avg(DD),0) 						as Average_damage_done
,row_number () over				
(order by round(avg(DD),0)  desc) 		as Dps_ranking
from wowwg w 
where Rol ='dps'
group by 1,2
order by 3 desc

/*5. How much total and average damage done by both factions? */

select
Faction
,round(sum(DD),0) 						as Total_damage_done
,round(avg(DD),0) 						as Average_damage_done
from wowwg w 
where Rol ='dps'
group by 1
order by 2 desc


/*6. What is percentage distributon of average healing done for healing classes? */ 

with class_healing_done as
(
select
Class 
,round(avg(HD),0) 													as Avg_healing
from wowwg w 
where Rol ='heal'
group by 1
), 
total_avg_healing_done as
(
select
sum( avg_healing) 													as Total_avg_healing
from class_healing_done
)
select
chd.Class
,round(((chd.avg_healing / tahd.total_avg_healing)*100),2) 			as Healing_percentage
from class_healing_done chd
cross join total_avg_healing_done tahd
order by 2

/*7. What is the difference between the total healing done for all classes between the two factions? */

select
Class 
,Faction 
,round(avg(HD),0) 			as Average_healing_done
from wowwg w 
where Rol ='heal'
group by 1,2
order by 3 desc


/*8. How much total and average healing done by both factions? */ 
select
Faction 
,round(sum(HD),0) 			as Total_healing_done
,round(avg(HD),0) 			as Average_healing_done
from wowwg w 
where Rol ='heal'
group by 1
order by 2 desc

/*9. Which class enjoys the highest mortality rate? */ 

select
Class 
,sum(D)						as Total_numbers_of_deaths
from wowwg w 
group by 1
order by 2 desc

/* 10.Which classes do players play the most often and which the least often? */ 

select
Class 
,count(Class)				as Total_numbers_of_appearances
from wowwg w 
group by 1
order by 2 desc

/*11. What are the differences in mortality between the factions? */

select
Faction 
,sum(D)						as Total_numbers_of_deaths
from wowwg w 
group by 1
order by 2 desc

/*12. Which classes captured the opponent's flag most often in both factions? */

select
Class 
,Faction 
,sum(FC)					as Total_flag_captured
from wowwg w 
group by 1,2
order by 3 desc