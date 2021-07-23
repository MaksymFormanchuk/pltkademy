#!/bin/bash
for n in {1..10}; do 
	{ < /dev/urandom tr -dc [:graph:] | head -c${1:-999};echo; } > random_text_"$n".txt; 
done
