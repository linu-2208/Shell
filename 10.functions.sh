#!/bin/bash

Id=$(id -u)

validate(){
     if [ $? -ne 0 ]
 then
   echo "Error: Installing  is fail"
   exit 1
 else
    echo "Installllig  is sucess"
    fi  
}

if [ $Id -ne 0 ]
then
   echo "Error: Please run this script as root user"
   exit 1
else 
    echo "You are root user"
 fi   

 yum install mysql -y

 validate
   
yum imstall git -y

validate