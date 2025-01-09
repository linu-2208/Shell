#!/bin/bash

Id=$(id -u)

if [ $Id -ne 0 ]
then
   echo "Error: Please run this script as root user"
   exit 1
else 
    echo "You are root user"
 fi   

 yum install mysql -y

 if [ $? -ne 0 ]
 then
   echo "Error: Installing Mysql is fail"
   exit 1
 else
    echo "Installllig Mysql is sucess"
    fi  

    yum install git  -y

    if [ $? -ne 0 ]
 then
   echo "Error: Installing git is fail"
   exit 1
 else
    echo "Installllig git is sucess"
    fi  