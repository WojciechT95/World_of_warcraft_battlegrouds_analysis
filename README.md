#  World Of Warcraft Battlegrouds Analysis

## Project Overview

The project focuses on data analysis of 77 "Warsong Gulch" battleground games.
 
### Context
Battlegrounds are scenarios where the two playable factions of the game (Horde and Alliance) fight against each other to win. This project is focused on battleground "Warsong Gulch" Each side tries to take the opponent flag and "cap" (score) it at their own base. You can only "cap" the flag if the enemy isn't carrying yours. The winner is the first team to achieve 3 caps, or the team with the most caps when the allotted time expires.

### Content

Common statistics (columns) in all files are:

- Code: code for the battleground (not needed for analysis).
- Faction: faction of the player (Horde or Alliance).
- Class: class of the player (warrior, paladin, hunter, rogue, priest, death knight, shaman, mage, warlock, monk, druid, demon hunter).
- KB: number of mortal kills given by the player.
- D: number of times that the player died.
- HK: number of killings where the player or his/her group contributed.
- DD: damage done by the player.
- HD: healing done by the player.
- Honor: honor awarded to the player.
- Win: 1 if the player won.
- Lose: 1 if the player lost.
- FC: number of flag captured by the player. 
- FR: number of flags defended by the player.
- Rol: dps if the player is a damage dealer; heal if the player is focused in healing allies. Note that not all classes can be healers, just shaman, paladin, priest, monk and druid, but all classes can be damage dealers.
- BE: some weeks there is a bonus event, when the honor gained is increased. 1 if the battleground happened during that week.

## Technologies Used

**MySQL** used for structured querying allowing to find answers to questions asked of the data.
  

## Insights and Conclusions

Below are the questions asked to the data and the answers to them

**1. How many times did the alliance win and how many times did the horde win?**

![image](https://github.com/user-attachments/assets/35de4230-43ef-4bd1-93d4-831a3f7e9f26)



**2. According to question one, how many times alliance or horde wins but as a full-fledged victory?**
 
 (note, if there are not enough players in battleground, the game ends after 3 minutes, leaving the winner with the best progress so far or when the allotted time expires.
 Full-fledged win in Warsong Gulch occurs when a team captures the flag from the opponent's base to its base three times)
 
![image](https://github.com/user-attachments/assets/e05b9849-ed1a-441a-8aef-920e4372bc68)



**3. Create ranking of classes that make the highest average damage done.**

![image](https://github.com/user-attachments/assets/af90a3af-3318-4138-9bff-60f4baece202)


**4. What is percentage distributon of average healing done for healing classes?**

![image](https://github.com/user-attachments/assets/e0b86cce-300f-439e-9e1c-b494242e9781)


**5. Which class enjoys the highest mortality rate?**

![image](https://github.com/user-attachments/assets/bc0eddca-8579-49f3-9d39-24728e92b5d8)

**6.Which classes do players play the most often and which the least often?**

![image](https://github.com/user-attachments/assets/a257cec8-4e6a-496f-86ef-0c8a9d63bc46)


## Data Source
    
The dataset was sourced from kaggle.com
