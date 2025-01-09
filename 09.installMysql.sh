#!/bin/bash

Id=$(id -u)

if [ $Id -ne 0 ]
then
   echo "Error: Please run this script as root user"
else 
    echo "You are root user"
 fi   