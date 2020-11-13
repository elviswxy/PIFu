#!/usr/bin/env bash

file_list=$(ls /hd4/renderpeople/models/prt_data)
for file in $file_list
do
  python -m apps.render_data -i /hd4/renderpeople/models/prt_data/$file -o /hd4/renderpeople/models/imgs_data -e
done
