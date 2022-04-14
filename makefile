README.md: guessinggame.sh
        echo "TITLE: Guessing Game" > README.md
        echo "Timestamp of make's run : `date`" >> README.md
        echo Number of lines of code in guessinggame.sh:  $(cat guessinggame.sh | wc -l)  >> README.md
