#!/bin/bash

# Para uploads grandes, esse script upa um commit por arquivo
# Não me responsabilizo se você for exilado do seu remote kkkkk

do_rec(){
	directory=$1

	echo "CD = $1"
	cd $directory
	d=$(ls)
	for file in $1/*
	do
		if [[ -d $file ]]; then
			echo "DIR = $file"
			do_rec $file
		elif [[ -f $file ]]; then
			echo "FILE = $file" 
			git add "$file"
			git commit -m "file"
			git push
			git pull
			sleep 1
		fi
	done
	cd ..
}

do_rec '.'
