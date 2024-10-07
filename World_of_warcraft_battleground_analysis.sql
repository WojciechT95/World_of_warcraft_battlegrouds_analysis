/*1. How many times alliance wins? how many horde wins? */ 

with match_won as (
select 
Code 
,Faction 
, count(distinct Win) 		as win_or_lose
from wowwg w 
group by 1,2
)
select 
wm.faction
,sum(win_or_lose)		as number_of_wins 
from 
match_won wm
group by 1


/* 2. According to question one, how many times alliance or horde wins but but as a full-fledged?
 
 (note, if there are not enough players in battleground, the game ends after 3 minutes, leaving the winner with the best progress so far.
 Full-fledged win in Warsong Gulch occurs when a team captures the flag from the opponent's base to its base three times)  */ 

select 
wi.winner
,count(wi.winner)					as Total_wins
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


/*3. Create ranking of classes that make the highest average damage done? */ 

select
Class 
,round(avg(DD),0) 						as average_damage_done
,row_number () over				
(order by round(avg(DD),0)  desc) 		as dps_ranking
from wowwg w 
where Rol ='dps'
group by 1
order by 2 desc

/*4. What is percentage distributon of average healing done for healing classes? */ 

with class_healing_done as
(
select
Class 
,round(avg(HD),0) 													as avg_healing
from wowwg w 
where Rol ='heal'
group by 1
), 
total_avg_healing_done as
(
select
sum( avg_healing) 													as total_avg_healing
from class_healing_done
)
select
chd.class
,round(((chd.avg_healing / tahd.total_avg_healing)*100),2) 			as healing_percentage
from class_healing_done chd
cross join total_avg_healing_done tahd
order by 2



/*5. Which class enjoys the highest mortality rate? */ 

select
Class 
, sum(D)				as total_numbers_of_deaths
from wowwg w 
group by 1
order by 2 desc

/**/
