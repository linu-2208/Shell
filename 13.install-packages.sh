#!/bin/bash

Id=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"


if [ $Id -ne 0 ]
then
   echo -e " $R Error: Please run this script as root user $N"
   exit 1
else 
    echo "You are root user"
 fi   

 echo "All args passed: $@"
