#!/bin/bash

# fetches all repositories that are not cloned before:
(
    mkdir -p packages;
    cd packages; 
    for r in $(cat ../config/list.txt); do
    	echo $r
    	dir=$(echo $r | sed -e 's/^.*\///')
        if ! [ -d $dir ]; then 
            mkdir -p $dir && git clone --mirror --bare $r $dir; 
        fi;
    done; 
)

( 
    cd packages; 
    for r in $(cat ../config/list.txt); do
    	echo $r
    	dir=$(echo $r | sed -e 's/^.*\///')
        if [ -d $dir ]; then 
            ( cd $dir && git fetch --prune );
        fi;
    done; 
)
