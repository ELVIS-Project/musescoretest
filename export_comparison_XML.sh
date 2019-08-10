MSCORE=/Applications/MuseScore\ 3.app/Contents/MacOS/mscore

printf "" > results_XML.txt

for x in *.xml
do
    #"$MSCORE" "$x" -o "${x%.xml}-pass1.musicxml"
    #"$MSCORE" "${x%.xml}-pass1.musicxml" -o "${x%.xml}-pass2.musicxml"
    { 
        echo $x
        cmp "${x%.xml}-pass1.musicxml" "${x%.xml}-pass2.musicxml" && echo cmp OK
        echo --------------------------
        python3 compare.py "${x%.xml}-pass1.musicxml" "${x%.xml}-pass2.musicxml"
        echo
        echo
    } >> results_XML.txt
done


