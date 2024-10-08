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
  

## Insights

Below are the questions asked to the data and the answers to them

**1. How many times did the Alliance win and how many times did the Horde win?**

![image](https://github.com/user-attachments/assets/3130fdd1-48aa-4006-a857-774647017981)

Checking the data of all the games, it was noted that with a slight advantage the Horde wins more often reaching 41 matches won, while the Alliance won only 36 matches.
However, it is worth asking the data:

**2. How many times Alliance or Horde wins but as a full-fledged victory?**

(note, if there are not enough players in battleground, the game ends after 3 minutes, leaving the winner with the best progress so far or when the allotted time expires.
 Full-fledged win in Warsong Gulch occurs when a team captures the flag from the opponent's base to its base three times)
 
![image](https://github.com/user-attachments/assets/94a5ebfe-591a-4555-b708-28e8fa26af15)

More than 1/3 of the games ended in walkovers, while the full-fledged Horde won almost 3 times as many matches as the Alliance. This means that the Horde dominated the Warsong Gulch. To answer this question, it is necessary to analyze the optimal formation of the team for this purpose must :

**3. Create ranking of classes that make the highest average damage done.**

![image](https://github.com/user-attachments/assets/28e6e893-b258-4d72-98be-36d963a0be39)

The data shows that the strongest classes are warlock, priest, paladin, mage, while the weakest classes are warrior, monk and rogue. To confirm these observations it is necessary to ask the next question:

**4. What is the difference between the total and average damage done for all classes separate for each factions?**

![image](https://github.com/user-attachments/assets/52e2b831-6c00-452f-8be9-ddf131fc4b5a)

From the data obtained, one can see a slight difference compared to the previous table. The first two places come out unchanged. The warlock class from Horde faction deals as much as more than 7 thousand average damage more compared to the Alliance player. In addition, in this faction one of the dominant classes is the hunter. In the Alliance, on the other hand, the highest average damage is dealt by the priest, while the death knight and druid also reach the top of the leaderboard. Interestingly, in the first 8 positions of the table, 6 of them are Alliance players. Now we have to find out:

**5. How much total and average damage done by both factions?**

![image](https://github.com/user-attachments/assets/019bd8ee-28fa-4e84-a164-c0d0f58ba0c2)

The above table shows that, Alliance players inflicted a total of more than 1.2 million and an average of 0.7 thousand more damage done than Horde players. The difference is relatively small. These data agree with the result obtained in question 4, but do not explain the dominance of the Horde faction in most matches. Therefore, it is necessary to examine other variables and ask the next question to the data:

**6. What is average healing done and its percentage distributon for healing classes?**

![image](https://github.com/user-attachments/assets/86d87d12-afbc-47e3-bd8b-ec8c7b7a0578)

The above data shows that the best healing classes are monk and priest. The worst is the Paladin. As in the analysis of classes that deal damage, the question needs to be asked:

**7. What is the difference between the total healing done for all classes between the two factions?**

![image](https://github.com/user-attachments/assets/a874a57b-03f0-4d5a-a0b6-7e9b51dd9ead)

The result of this query is surprising. It shows that Horde players playing the Monk class heal, on average, about 1.5 more lives than their Alliance playing opponents. At the top is also the prist class from both factions, which confirms the data obtained in question 6. It can also be noted that the upper part of the table is filled mostly by classes on the Horde side. It would therefore be appropriate to ask the data:

**8. How much total and average healing done by both factions?**

![image](https://github.com/user-attachments/assets/00a780c8-cdbb-46f5-b448-db70ca17321e)

Horde players healed a total of 2.3 million and almost averaged 3,000 more lives than Alliance players. Here the difference is noticeable and we can assume that this is one of the reasons for their dominance.To confirm this, it is necessary to ask the data:

**9. What are the differences in mortality between the factions?**

 ![image](https://github.com/user-attachments/assets/8beb8abe-b47c-40a4-a003-269d65685ad8)

The result obtained confirms the assumptions in the earlier question. The effective work of healing classes reduces the number of player deaths, which makes the faction's gameplay more fluid and allows them to win more matches. The main condition for winning, is to capture three flags from the opponent's base, so the next question must be asked:

**10. Which classes captured the opponent's flag most often in both factions?**

![image](https://github.com/user-attachments/assets/bf94fb18-2018-4320-b898-fbaf9f5423df)

Demon Hunters have an overwhelming dominance in taking the enemy's flag. Next in the table are Warrior, Druid and Monk. In turn, the bottom of the table is dominated by exactly the same classes, which deal the highest average damage done. And how many times on average do players of a given class die? To check this the next question is:

**11.Which classes do players play the most often and which the least often and what is their mortality rate?**

![image](https://github.com/user-attachments/assets/dab5e9b2-299f-4a80-967b-8e74580c3a48)

From the data, it appears that the lowest mortality rate of the classes that most often receive the flag are Monk and Druid, making them the best for this role. Demon Hunter and Warrior die in this role much more often.  The class that dies the most often is Warlock.


## Conclusions

The above analysis of the data shows that:

1. The dominant faction in all the games analyzed is the Horde.

2. The role of healing classes is critically important and is key to winning matches.

3. The most optimal team should include: 
-Damage Dealers, playing with Warlock, Priest, Mage, Hunter and Death Knight classes.
-Healers, playing with Monk and Priest classes
-Flag Catcher, playing with Monk, Druid and Demon Hunter classes.
  
## Data Source
    
The dataset was sourced from kaggle.com
