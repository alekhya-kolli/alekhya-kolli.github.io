README.md: cphistory.txt
	touch README.md
	echo "My First Unix Project" > README.md

	echo "	" >> README.md
	echo "---------" >> README.md
	echo "	" >> README.md

	echo "The date and time at which make was run: " >> README.md
	echo "	" >> README.md
	sed -n 853p cphistory.txt >> README.md
	echo "	" >> README.md
	sed -n 854p cphistory.txt >> README.md

	echo "	" >> README.md
	echo "---------" >> README.md
	echo "	" >> README.md

	echo "The number of lines of code contained in guessinggame.sh :  " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

