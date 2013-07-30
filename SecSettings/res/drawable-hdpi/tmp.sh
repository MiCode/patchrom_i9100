#!/bin/bash

for png in ./*.png
do
	rm $png
	name=`basename $png`
	name=${name/.*/}
	touch $name
done
