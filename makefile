README.md:
	touch README.md
	echo "##Guessing Game##" > README.md
	echo "This make was run at: " >> README.md
	date +"%F %T %Z" >> README.md
	echo "The number of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
