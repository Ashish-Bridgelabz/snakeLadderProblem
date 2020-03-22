#!/bin/bash -x
#DISPLAY WELCOME STATEMENT
echo "Welcome to the snake and ladder problem"
#PLAYER1 STARTING POSITION
player1=0
position=0
NoPlay=0
Ladder=1
Snake=2
#GENERATE THE RANDOM NUMBER FOR NEW POSITION OR SAME POSITION 
playerRollsDiec=$((RANDOM%6+1))
#GENERATE THE RANDOM VALUE AND CHECK THE OPTION TO AUTOMATIC
checkOption=$((RANDOM%3))
case  $checkOption in
   $NoPlay)
         position=$position
         echo "Stay in the same:"$position;;
   $Ladder)
         position=$(($position+$playerRollsDiec))
         echo "Count a new ladder position:"$position;;
   $Snake)
         position=$(($position+$playerRollsDiec))
         echo "Count a new snake position:"$position;;
esac





