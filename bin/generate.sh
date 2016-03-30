#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cat $DIR/../config/list.txt | php $DIR/generate.php  > $DIR/../config/satis.json
