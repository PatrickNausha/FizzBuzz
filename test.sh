#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <run command>"
	echo "Example: $0 'ruby main.rb'"
	exit 1
fi

eval "$1" | cmp -s - ./solution.txt

if [ $? -ne 0 ]; then
	echo "Test failed."
	exit 1
fi

echo "Test passed."
