#!/bin/bash -x
#DISPLAY WELCOME STATEMENT
echo "Welcome to the snake and ladder problem"
#START A GAME WITH SINGLE PLAYER WITH ZERO POSITION
#PLAYER1 STARTING POSITION ZERO
player1=0
position=0
NoPlay=0
Ladder=1
Snake=2
while (($position!=100))
do
	#GENERATE THE RANDOM NUMBER FOR NEW POSITION OR SAME POSITION 
	playerRollsDiec=$((RANDOM%6+1))
	#GENERATE THE RANDOM VALUE AND CHECK THE OPTION TO AUTOMATIC
	checkOption=$((RANDOM%3))
	case  $checkOption in
   	$NoPlay)
					position=$position
					echo "Stay in a same poisition:"$position;;
   	$Ladder)
      		   position=$(($position+$playerRollsDiec))
					echo "player moves ahead by position:"$position;;
   	$Snake)
         		position=$(($position-$playerRollsDiec))
					echo "player moves behind by position:"$position
					if(($position<=0))
					then
					position=0
					fi;;
	esac
done







