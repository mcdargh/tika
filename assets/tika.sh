#!/bin/bash
pushd /data
if [[ $# -eq 1 ]];
	then java -cp "/tika/tika.jar:/tika/libs/*" org.apache.tika.cli.TikaCLI --text $1
fi
if [[ $# -eq 2 ]];
        then java -cp "/tika/tika.jar:/tika/libs/*" org.apache.tika.cli.TikaCLI -i $1 -o $2 --text
fi
