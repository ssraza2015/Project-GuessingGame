#!/bin/bash
##	By Syed Salman Raza ( ssraza2015@gmail.com ) | Karachi, Pakistan. | 24-Aug-2020 | For Coursera Assignment | Subject The Unix Workbench
##	Objective: 
##		create a program called guessinggame.sh. This program will continuously ask the user to guess the number of files in the current directory, 
##		until they guess the correct number. The user will be informed if their guess is too high or too low. 
#		Once the user guesses the correct number of files in the current directory they should be congratulated.

func_guess() {

	while :		# Loop will run until break, break will be issue only if user guess is right.
		do
		
		number_of_files=`ls -al | grep '^-'|wc -l`	 ## To calculate the files(Not directories) in current directory.
		echo -e "\n"
		read -p "How many files are in the current directory, Please enter your guess: " user_guess
  
		
		if [[ $user_guess ]] && [ $user_guess -eq $user_guess 2>/dev/null ]	# Validating that user only enter integer.
		then																# if not then  do to else and ask user to input again
						
			if [ $user_guess -eq  $number_of_files ]		# Matching user input and the numbers of files
			then
				echo -e "\n"
				echo "Congratulattion! Your guess it right. "
				break
			
			elif [ $user_guess -gt  $number_of_files ]	# If input is greater than the numbers of files
			then
				echo -e "\n"
				echo "Too High, Please try again"
			
			else
				echo -e "\n"
				echo "Too Low, Please try again"	# if in mut is less than the number of files
				
			fi
	 	
		else
			echo -e "\n" # New line
			echo "Please enter integer, blank or non integer values are not allowed."  ## If users entered non integer or blank valiue
		fi
  
	done
}

clear
func_guess	## Calling Function which will perform all operations
