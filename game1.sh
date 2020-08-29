!#/bin/bash
echo -n "Do you want to play a game? [y/n]: "
	read ans
	echo $ans
if [[[[$ans == "y"]] || [[$ans == "Y"]]]]; then
	echo "Let the game begin!"
	echo "Guess a number between 1 and what?"
	read topNumber
	echo $topNumber
	echo "what is your random number?"
	read result
	randomNumber=$RANDOM
	let "randomNumber %= $topNumber" 
	echo $randomNumber
	if [[result==randomNumber]]; then
		echo "Win! $randomNumber = $result"
	else;then
		echo "Lose! $randomNumber /= $result"

if [[[[$ans == "y"]] || [[$ans == "Y"]]]]; then
        echo "Let the game begin!"
        echo "Guess a number between 1 and what?"
        read topNumber
        echo $topNumber
        echo "what is your random number?"
        read result
        randomNumber=$RANDOM 
        let "randomNumber %= $topNumber" 
        echo $randomNumber
        if [[result==randomNumber]]; then
                echo "Win! $randomNumber = $result"
        else;then
                echo "Lose! $randomNumber /= $result"


