#!/bin/bash

Id=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

TIMESTAMP=$(date +%F-%H-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script stareted executing at $TIMESTAMP" &>> LOGFILE


VALIDATE(){
     if [ $1 -ne 0]
     then
         echo -e "$2...$R FAiled $N"
     else
        echo -e "$2... $G SUCESS $N"
     fi       

}

if [ $Id -ne 0 ]
then
   echo -e " $R Error: Please run this script as root user $N"
   exit 1
else 
    echo "You are root user"
 fi   

 #echo "All args passed: $@"
# package =git for first time
#packages git mysql postfix
 for package in $@ 
do 

     yum list installed $package &>> LOGFILE #Check installed or not
     if [ $? -ne 0] #if not installed
     then 
         yum install $package -y &>> LOGFILE #install the package
         VALIDATE $? "Installation of $package "
     else
          echo -e   "$package is already installed.... $Y Skipping $N"
      fi     
     done    
 

