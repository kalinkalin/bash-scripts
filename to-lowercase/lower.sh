#!/bin/bash

for file in *
do
  IFS=$'\n' 
  mv -i -- `echo "$file"` `echo "$file" | gawk -F '\n' '{print tolower($1)}'`
done
