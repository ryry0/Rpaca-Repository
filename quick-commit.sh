#!/bin/bash

git add ${1}
NAME=$(echo ${1} | sed 's/.rpac//')
git commit -m "Added $NAME build."
