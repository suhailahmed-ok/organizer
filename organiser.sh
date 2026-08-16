mkdir -p images text pdfs  audio

for file in *

do

echo $file

extension="${file##*.}"

echo "$file - $extension"

case "$extension" in
    jpg|jpeg|png)
        mv "$file" images/
        echo "image file"
        ;;
    txt)
        mv "$file" text/
        echo "text file"
        ;;
    pdf)
       mv "$file" pdfs/
        echo "PDF file"
        ;;
    mp3)
       mv "$file" audio/
        echo "audio file"
        ;;
esac

done
