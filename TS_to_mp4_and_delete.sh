
IFS=$'\n'
FILES=`find . -name '*.TS' -type f`

for FILE in $FILES; do
echo "STARTSTRING" $FILE "ENDSTRING"
	ffmpeg -i $FILE `echo $FILE | sed 's/\(.*\.\)TS/\1mp4/'`
    rm $FILE
done
