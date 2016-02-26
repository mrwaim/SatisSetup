#!/bin/bash
scriptdir=`dirname "$BASH_SOURCE"`
cd $scriptdir/../
echo $PWD
echo "git pull origin master"
git pull origin master
echo "./satis/bin/satis build config/satis.json public/ $1"
./satis/bin/satis build config/satis.json public/ $1
