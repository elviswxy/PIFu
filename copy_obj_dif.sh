#!/usr/bin/env bash

file_list=$(ls /hd4/renderpeople/models/prt_data)
for file in $file_list
do
		if [ ! -f "/hd4/renderpeople/models/unzip_models/${file}_MAYA/${file}_MAYA/${file}_MAYA/scenes/${file}_100k.obj" ]
		then
			cp "/hd4/renderpeople/models/unzip_models/"$file"_MAYA/"$file"_MAYA/scenes/"$file"_100k.obj" /hd4/renderpeople/models/prt_data/$file/
			cp "/hd4/renderpeople/models/unzip_models/"$file"_MAYA/"$file"_MAYA/sourceimages/"$file"/"$file"_dif_8k.jpg" /hd4/renderpeople/models/prt_data/$file/
			cp "/hd4/renderpeople/models/unzip_models/"$file"_MAYA/"$file"_MAYA/sourceimages/"$file"/"$file"_dif_2k.jpg" /hd4/renderpeople/models/prt_data/$file/
			else
			  echo $file
		fi
done
