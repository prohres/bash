#!/bin/bash

# creates a file with the future search result
dir_result=/var/devops/task_3
rm $dir_result/result_search_errors.log
touch $dir_result/result_search_errors.log
result_log=$dir_result/result_search_errors.log

# through the loop for the lookup for matching files
dir_log=/var/log
for file_log in `egrep -r -w -l 'ERROR|WARN' $dir_log` ;
do
	# copy 3 lines before and after the error string to the result file
	name_log=${file_log##*/}
	echo "$name_log" >> $result_log
	echo "==============================" >> $result_log
	grep -B3 -C3 "ERROR" $file_log >> $result_log
	grep -B3 -C3 "WARN" $file_log >> $result_log
	echo "==============================" >> $result_log
	date +%F_%H-%M >> $result_log
	echo -e " \n ">> $result_log
done
