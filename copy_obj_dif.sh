#!/usr/bin/env bash

file_list=$(ls /hd4/renderpeople/models/prt_data)
for file in $file_list
do
		if [ ! -f "/hd4/renderpeople/models/unzip_models/$$file_MAYA/$$file_MAYA/scenes/$$file_100k.obj" ]
		then
			cp /hd4/renderpeople/models/unzip_models/$$file_MAYA/$$file_MAYA/scenes/$$file_100k.obj /hd4/renderpeople/models/prt_data/$$file/
			cp /hd4/renderpeople/models/unzip_models/$$file_MAYA/$$file_MAYA/sourceimages/$$file/$$file_dif_8k.jpg /hd4/renderpeople/models/prt_data/$$file/
			cp /hd4/renderpeople/models/unzip_models/$$file_MAYA/$$file_MAYA/sourceimages/$$file/$$file_dif_2k.jpg /hd4/renderpeople/models/prt_data/$$file/
			else
			  echo $file
		fi
done
