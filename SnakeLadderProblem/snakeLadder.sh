#!/bin/bash -x
echo "Welcome to snake and ladder problem"
#START A GAME WITH PLAYER1 AND PLAYER2 WITH ZERO POSITION
#VARIABLES
position=0
player1=0
player2=0
diecount=0
diecount2=0
NoPlay=0
Ladder=1
Snake=2
declare -A diePosition
function snakeGame()
{
	position=$1
	##GENERATE THE RANDOM NUMBER FOR NEW POSITION OR SAME POSITION
	playerRollsDie=$((RANDOM%6+1))
	#GENERATE THE RANDOM VALUE AND CHECK THE OPTION 
	checkOption=$((RANDOM%3))
	case $checkOption in
		$NoPlay)
				position=$position;;
				
		$Ladder)
				#EXACT WINNING POSITION
				if(( $((position+playerRollsDie))>100 ))
				then
					position=$position
				else
					position=$((position+playerRollsDie))
					position=$position
				fi;;
		$Snake)
				if(($position>$playerRollsDie))
				then
					position=$((position-playerRollsDie))
					position=$position
				else
					position=0
				fi
				;;
	esac
	#COUNT THE DIECE AND POSITION
	diePosition[$diecount]=$position
	echo $position
}
#TILL PLAY 100 FOR BOTH PLAYER
while(($player1!=100 && $player2!=100))
do
	((diecount++))
	player1="$(snakeGame $player1)"
	echo "player1 $diecount : Position $player1"
	((diecount2++))
	player2="$(snakeGame $player2)"
	echo "player2 $diecount2 : Position $player2"
done
#THIS IS USE FOR WINNING POSITION
if(($player1==100))
then
	echo "Congratulations!!! Player1 Won the diecount $diecount times"
else
	echo "Congratulations!!!! Player2 Won the diecount $diecount2 times"
fi
