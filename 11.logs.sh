#!/bin/bash

Id=$(id -u)
TIMESTAMP=$(date +%F-%H-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script name $0"

validate(){
     if [ $1 -ne 0 ]
 then
   echo "Error: $2..... fail"
   exit 1
 else
    echo "$2...... sucess"
    fi  
}

if [ $Id -ne 0 ]
then
   echo "Error: Please run this script as root user"
   exit 1
else 
    echo "You are root user"
 fi   

 yum install mysql -y &>> $LOGFILE

 validate $? "installing mysql"
   
yum install git -y &>> $LOGFILE

validate $? "installing git"