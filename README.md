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


![image](https://github.com/user-attachments/assets/3130fdd1-48aa-4006-a857-774647017981)



**2. According to question one, how many times alliance or horde wins but as a full-fledged victory?**

(note, if there are not enough players in battleground, the game ends after 3 minutes, leaving the winner with the best progress so far or when the allotted time expires.
 Full-fledged win in Warsong Gulch occurs when a team captures the flag from the opponent's base to its base three times)
 
![image](https://github.com/user-attachments/assets/94a5ebfe-591a-4555-b708-28e8fa26af15)




**3. Create ranking of classes that make the highest average damage done.**

![image](https://github.com/user-attachments/assets/28e6e893-b258-4d72-98be-36d963a0be39)


**4. What is the difference between the total and average damage done for all classes and between the two factions?**

![image](https://github.com/user-attachments/assets/52e2b831-6c00-452f-8be9-ddf131fc4b5a)

**5. How much total and average damage done by both factions?**

![image](https://github.com/user-attachments/assets/019bd8ee-28fa-4e84-a164-c0d0f58ba0c2)


**6. What is average healing done and its percentage distributon for healing classes?**

![image](https://github.com/user-attachments/assets/9b55bf4e-7133-4bbe-bc23-a484c5a1572c)



**7. What is the difference between the total healing done for all classes between the two factions?**

![image](https://github.com/user-attachments/assets/a874a57b-03f0-4d5a-a0b6-7e9b51dd9ead)


**8. How much total and average healing done by both factions?**

![image](https://github.com/user-attachments/assets/00a780c8-cdbb-46f5-b448-db70ca17321e)


**9. Which class enjoys the highest mortality rate?**

![image](https://github.com/user-attachments/assets/af6391f8-7ff1-4a35-858f-6ea82749ef83)


**10.Which classes do players play the most often and which the least often?**

![image](https://github.com/user-attachments/assets/5e2e0911-2aff-4afc-9f3c-1ba1df0c975d)


**11. What are the differences in mortality between the factions?**

![image](https://github.com/user-attachments/assets/4268d6e5-771a-4339-96fa-ee153b85564b)

**12. Which classes captured the opponent's flag most often in both factions?**

![image](https://github.com/user-attachments/assets/bf94fb18-2018-4320-b898-fbaf9f5423df)



## Data Source
    
The dataset was sourced from kaggle.com
