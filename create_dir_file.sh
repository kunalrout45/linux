#bin/bash

usr_dir=$1
mkdir $usr_dir ; cd $usr_dir  ;
count=$2
for ((i=1;i<=$count;i++ )); do
touch "file$i.txt"
done
echo "enter number of files requried are $2 in directory $1 successfully done "


#this is a sript to create a dir and n number of files within it , input should be a single line command <test.sh> <dir_name> <no._of_files_within>
