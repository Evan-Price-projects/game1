#!/bin/bash
echo -n "Do you want to play a game? [y/n]: "
	read ans
	guess=5
	if [[("$ans" = y) || ("$ans" = Y)]]; then
		echo "Let the game begin!"
		echo "Guess a number between 1 and what number?"
		read topNumber
		randomNumber=$((RANDOM % "$topNumber"))
		while [ $guess -gt 0 ]; do
			echo "what is your guess between 1 and $topNumber"
			read results
			if [ $results -eq $randomNumber ]; then
				echo "WINNER!!! the random number was $randomNumber"
				guess=-5
		        elif [[ $results -lt $randomNumber || $results -gt $randomNumber ]]; then
				if [ $results -lt $randomNumber ]; then
					((guess-=1))
	        	        	echo "guess a higher number than your current guess you have $((guess)) guess(es) left"
       				else
					((guess-=1))
					echo "guess a lower number than your current guess, you have $((guess)) guess(es) left"
				fi
			fi
		done
		if [ $guess -eq 0 ]; then
			echo "you lose, the random number was $randomNumber"
		fi
	else
		echo "too bad,\nYou miss 100% of the shots you don't take -Wayne Gretzky"
	fi

