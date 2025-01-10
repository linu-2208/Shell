#!/bin/bash

Number1=$1
Number2=$2

sum=$(($1+$2))

echo "total :$sum"

echo "How many args paseed: $#"

echo "All args passed : $@"

echo "Script name: $0"