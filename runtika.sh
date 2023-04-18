#!/bin/bash

if [[ $# -eq 1 ]];
	then docker run --rm -it -v $(pwd):/data tika  "$1" 
fi
if [[ $# -eq 2 ]];
        then docker run --rm -it -v $(pwd):/data tika  "$1" "$2"
fi
