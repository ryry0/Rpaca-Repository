#!/bin/bash

OBJECTS=$(cat $1)

for i in $OBJECTS; do

cp -v rpaca-repo/xtrans.rpac $(echo $i | cut -f1 -d- | tr '[:upper:]' '[:lower:]').rpac
sed -i "s/xtrans/$(echo $i | cut -f1 -d-)/" $(echo $i | cut -f1 -d- | tr '[:upper:]' '[:lower:]').rpac
sed -i "s/1.3.5/$(echo $i | cut -f2 -d-)/" $(echo $i | cut -f1 -d- | tr '[:upper:]' '[:lower:]').rpac

done

