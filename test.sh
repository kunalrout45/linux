#bin/bash

usr_dir=$1
mkdir $usr_dir ; cd $usr_dir  ;
count=$2
for ((i=1;i<=$count;i++ )); do
touch "file$i.txt"
done
echo "enter number of files requried are $2 in directory $1 successfully done "

