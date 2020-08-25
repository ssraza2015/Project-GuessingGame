readme.md: guessinggame.sh
	touch readme.md
	echo "# Project-GuessingGame | For Coursera | Subject The Unix Workbench | Assignment By Syed Salman Raza" > readme.md
	echo "- Make was run at: " `date` >> readme.md
	echo "- Numbers of Lines " `wc -l guessinggame.sh | egrep -o "[0-9]+" ` >> readme.md
  
