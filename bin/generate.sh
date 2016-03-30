#!/bin/sh
cat config/list.txt | php bin/generate.php  > config/satis.json
