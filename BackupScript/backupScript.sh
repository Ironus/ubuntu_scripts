#!/bin/bash

# Script to make backup files from source_dir
# and save them in destination_dir

function show_usage {
	echo "Usage $0 source_dir destination_dir"
	
	if [ $# -eq 0 ]; then
		exit 99 # Exit with arbitrary nonzero return code
	else
		exit $1
	fi
}

function copy_files {
	# get date
	date=`date +%Y-%m-%d`
	# prepare sufix
	sufix="_BACKUP_$date"

	# temp variables
	source_dir=$1
	dest_dir=$2

	# main loop to copy files
	for file in $source_dir/*; do
		# get file base name from path
		file_name=${file##*/}
		if [ -d $file ]; then
			# recreate directory for backup files
			mkdir "$dest_dir/$file_name$sufix"
			# run itself recursively to make backup
			copy_files "$source_dir/$file_name" \
				"$dest_dir/$file_name$sufix"
		elif [ -f $file ]; then
			echo "Copying $file to $dest_dir/$file_name$sufix"
			cp $file $dest_dir/$file_name$sufix
		fi
	done
}

# check if correct number of arguments provided
if [ $# -ne 2 ]; then
	show_usage
fi

# check if source directory exist and is a directory
if [ -d $1 ]; then
	source_dir=$1
else
	echo "Invalid source directory"
	show_usage 1
fi

# check if destination directory exist and is a directory
if [ -d $2 ]; then
	dest_dir=$2
else
	echo "$2: There is no such directory. Create? [Y/n]"
	read confirm
	
	# if answer positive create dest_dir
	if [ $confirm = "Y" ]; then
		mkdir $2
		dest_dir=$2
		echo "$2: Created."
	else
		echo "Invalid destination directory"
		show_usage 2
	fi
fi

# iterate through all files in source directory
copy_files $source_dir $dest_dir
