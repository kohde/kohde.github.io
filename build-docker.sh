#!/bin/bash
currentdir=$(pwd)
echo $currentdir
docker run --rm --label=jekyll --volume="$currentdir":/srv/jekyll  -it -p 4000:4000 jekyll/jekyll bash ./build-prod.sh
