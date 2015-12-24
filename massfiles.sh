#!/bin/bash

OBJECTS=$(cat $1)

for i in $OBJECTS; do

FILENAME=$(echo $i | sed "s/-[0-9].[0-9].[0-9]//" | tr '[:upper:]' '[:lower:]')

cp -v bdftopcf.rpac $FILENAME.rpac
sed -i "s/bdftopcf/$(echo $i | sed "s/-[0-9].[0-9].[0-9]//" )/" $FILENAME.rpac
sed -i "s/1.0.5/$(echo $i | grep -o '[0-9]\.[0-9]\.[0-9]')/" $FILENAME.rpac

done

