#!/bin/sh
# 

if [ "$1" = "" ]; then
  echo "run './FILEPRE_mk-archive-php.sh' first";
  exit;
fi;

N="$(echo -n "$1")"
if [ ! $(echo -n "$N" | wc -c) -eq 14 ]; then
  echo "nope: timestamp not correct";
  exit;
fi;

mkdir -p "php-backup" && cd "php-backup"
wget "WWWURLSSFWHEAD/PREFIX_php-$N.tar.gz"

cd ..

# un-remake (remove the #) from the lines below to
# automate your own git clone
#git add php-backup/*
#git commit -m "ssfw-php: updated latest to $N"
#git push
