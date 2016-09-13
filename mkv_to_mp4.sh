
IFS=$'\n'
FILES=`find . -name '*.mkv' -type f`

for FILE in $FILES; do
echo "STARTSTRING" $FILE "ENDSTRING"
	ffmpeg -i $FILE `echo $FILE | sed 's/\(.*\.\)mkv/\1mp4/'`
done
