#!/bin/bash
git checkout lab-00

for i in `seq -f '%02g' 1 40`; do
	git checkout -b "lab-$i"
	git push -u origin HEAD
done

git checkout lab-00
