#!/bin/bash

docker run --rm -it -v $(pwd):/data tika  $1 $2
