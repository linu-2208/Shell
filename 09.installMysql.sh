#!/bin/bash

Id=$(id -u)

if [ $id -ne 0 ]
   echo "Error: Please run this script as root user"
else 
    echo "You are root user"
 fi   