#!/usr/bin/env bash

#file_list=$(ls /hd4/renderpeople/models/prt_data)
#for file in $file_list
#do
#		if [ -f "/hd4/renderpeople/models/unzip_models/${file}_MAYA/${file}_MAYA/scenes/${file}_100k.obj" ]
#		then
#			cp "/hd4/renderpeople/models/unzip_models/"$file"_MAYA/"$file"_MAYA/scenes/"$file"_100k.obj" /hd4/renderpeople/models/prt_data/$file/
#			cp "/hd4/renderpeople/models/unzip_models/"$file"_MAYA/"$file"_MAYA/sourceimages/"$file"_dif_8k.jpg" /hd4/renderpeople/models/prt_data/$file/
#			cp "/hd4/renderpeople/models/unzip_models/"$file"_MAYA/"$file"_MAYA/sourceimages/"$file"_dif_2k.jpg" /hd4/renderpeople/models/prt_data/$file/
#			else
#			  echo $file
#		fi
#done

file_list=$(ls /hd4/renderpeople/models/prt_data)

for file in $file_list
do
  mv /hd4/renderpeople/models/imgs_data/${file}/GEO/OBJ/${file} /hd4/renderpeople/models/data/GEO/OBJ/
  mv /hd4/renderpeople/models/imgs_data/${file}/MASK/${file} /hd4/renderpeople/models/data/MASK/
  mv /hd4/renderpeople/models/imgs_data/${file}/PARAM/${file} /hd4/renderpeople/models/data/PARAM/
  mv /hd4/renderpeople/models/imgs_data/${file}/RENDER/${file} /hd4/renderpeople/models/data/RENDER/
  mv /hd4/renderpeople/models/imgs_data/${file}/UV_MASK/${file} /hd4/renderpeople/models/data/UV_MASK/
  mv /hd4/renderpeople/models/imgs_data/${file}/UV_NORMAL/${file} /hd4/renderpeople/models/data/UV_NORMAL/
  mv /hd4/renderpeople/models/imgs_data/${file}/UV_POS/${file} /hd4/renderpeople/models/data/UV_POS/
  mv /hd4/renderpeople/models/imgs_data/${file}/UV_RENDER/${file} /hd4/renderpeople/models/data/UV_RENDER/
done
