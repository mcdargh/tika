#!/bin/bash

if [[ $CONSUMERS -eq "" ]];
    then CONSUMERS=4
fi

if [[ $MILLIS -eq "" ]];
    then MILLIS=600000
fi

echo "Running tika with $CONSUMERS number of threads"
echo "Timeout for parse is $MILLIS ms"

pushd /data
if [[ $# -eq 1 ]];
	then java -cp "/tika/tika.jar:/tika/libs/*" org.apache.tika.cli.TikaCLI -numConsumers $CONSUMERS -timeoutThresholdMillis $MILLIS --text "$1"
fi
if [[ $# -eq 2 ]];
        then java -cp "/tika/tika.jar:/tika/libs/*" org.apache.tika.cli.TikaCLI -numConsumers $CONSUMERS -timeoutThresholdMillis $MILLIS  -i "$1" -o "$2" --text
fi
