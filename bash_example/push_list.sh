#!/bin/bash
# mkdir $HOME/files $HOME/archives && cd $HOME/files && touch file_{1..20}.txt

# Create an archive of files
DIR=$HOME
DATE=$( date +%F_%H-%M )
for (( i=1; i<=20; i++ ))
do
tar -czvf $DIR/archives/list_$DATE.tar.gz --absolute-names $DIR/files/file_$i.txt
done

# Copy old archives and delete them
for FILE in `find $DIR/archives/ -type f -mmin +30` ;
do
NAME=${FILE##*/}
aws s3 cp $DIR/archives/$NAME s3://training-server/task/task_1/archives/$NAME
rm $DIR/archives/$NAME
done

# Creat crontab job 
# */5 * * * * /bin/bash $HOME/push_list.sh > /tmp/result_push_list.log 2>&1
