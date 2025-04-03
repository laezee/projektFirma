#!/bin/bash

for file in *.mkv; do
filename=$(echo "$file" | sed -r 's/\./ /g; s/1080p//; s/2160p//; s/BluRay//; s/10bit//; s/WEB\-DL//; s/HULU//; s/4K//; s/DDP5//; s/AAC5//; s/x265//; s/x264//; s/\[YTS MX\]//; s/1 H 265\-FLUX//; s/REMASTERED//; s/WEB//; s/10Bit//; s/\-GalaxyRG265 //; s/ 1 //; s/ 1\-//; s/Tigole//; s/X264//; s/AC3\-EVO//; s/Blu\-Ray HEVC   Subs KINGDOM//; s/Bluray  AV1 OPUS 5UH//; s/Rip 6CH  HEVC\-PSA//; s/Rip 1400MB DD5\-GalaxyRG//' | sed -r 's/\(//g; s/\)//g; s/ mkv/\.mkv/; s/PROPER//; s/THEATRICAL//; s/YIFY//; s/BrRip//; s/BOKUTOX//; s/AMZN//; s/Ghost//; s/DSNP//; s/t3nzin//' | tr -s " " | sed -r 's/ .mkv/\.mkv/')
if [[ "$1" == "-t" ]]; then
	echo "$filename" 
elif [[ "$1" == "-r" ]]; then
	mv "$file" "$filename"
fi
done
