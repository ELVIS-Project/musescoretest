MSCORE=/Applications/MuseScore\ 3.app/Contents/MacOS/mscore

printf "" > results.txt

for x in *-pass1.mid
do
    #"$MSCORE" "$x" -o "${x%.mid}-pass1.mid"
    #"$MSCORE" "${x%.mid}-pass1.mid" -o "${x%.mid}-pass2.mid"
    cmp "$x" "${x%-pass1.mid}-pass2.mid"
    printf "${x%-pass1.mid}.mid\t$?\n" >> results.txt
done


