#!/bin/bash

Id=$(id -u)
TIMESTAMP=$(date +%F-%H-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script name $0"

validate(){
     if [ $1 -ne 0 ]
 then
   echo -e "Error: $2..... $R fail $N"
   exit 1
 else
    echo -e "$2...... $G sucess $N"
    fi  
}

if [ $Id -ne 0 ]
then
   echo -e " $R Error: Please run this script as root user $N"
   exit 1
else 
    echo "You are root user"
 fi   

 yum install mysqll -y &>> $LOGFILE

 validate $? "installing mysql"
   
yum install git -y &>> $LOGFILE

validate $? "installing git"