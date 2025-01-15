#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "OPtions::"
    echo "-n Specify name(mandatory)"
    echo "-w Specify the wishes,example: Good Morning"
    echo "-h Display Help and exit"
}
While getopts ":n:w:h" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        h|*) USAGE; exit;;
     esac   
 done    




