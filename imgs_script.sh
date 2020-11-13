#!/usr/bin/env bash

file_list=$(ls /hd4/renderpeople/models/unzip_models)
for file in $file_list
do
	for letter in {g..i}
	do
		if [[ $file =~ rp_$$letter ]]
		then
			echo $$file
			python -m apps.prt_util -i /hd4/renderpeople/models/unzip_models/$$file/$$file/scenes
		fi
	done
done
