README.md: guessinggame.sh
        echo "# Guessing Game" > README.md
        echo "## Timestamp of make's run : `date`" >> README.md
        command=$(cat guessinggame.sh | wc -l)
        echo "## Number of lines of code in guessinggame.sh:  $(command)"  >> README.md
        echo "## [Link to Github Page](https://a-dhingra.github.io/unix-workbook/)" >> README.md
