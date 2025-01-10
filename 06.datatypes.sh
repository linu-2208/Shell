#!/bin/bash

Number1=$1
Number2=$2

Sum=$($1+$2)

echo "total :$Sum"

echo "How many args paseed: $#"

echo "All args passed : $@"

echo "Script name: $0"