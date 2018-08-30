#!/bin/bash

cd happy/test/not-wake-word
mkdir output

SOURCE_DIR=.
DEST_DIR=output

#for i in $SOURCE_DIR/*.mp3; do echo "Converting $i..."; fn=${i##*/}; ffmpeg -i "$i" -y -f wav -ar 16000 -ac 1 "$DEST_DIR/${fn%.*}.wav"; done
for i in $SOURCE_DIR/*.wav; do echo "Converting $i..."; fn=${i##*/}; ffmpeg -i "$i" -y -f wav -ar 16000 -ac 1 "$DEST_DIR/${fn%.*}.wav"; done


rm *.wav
mv output/* .
rm -r output

#ffmpeg -i 1944.wav -y -f wav -ar 16000 -ac 1 output/1944.wav

