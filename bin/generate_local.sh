#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
(
    mkdir -p packages;
    cd packages; 
    for r in $(cat $DIR/../config/list.txt); do
#    	echo $r
    	dir=$(echo $r | sed -e 's/^.*\///')
#    	echo $dir
        if [ -d $dir ]; then 
	    	echo $PWD/$dir
        fi;
    done; 
) | php $DIR/generate.php  > $DIR/../config/satis_local.json