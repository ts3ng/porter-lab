#!/bin/bash -e
git checkout lab-00

for i in `seq -f '%02g' 2 40`; do
	git checkout "lab-$i"
	sed -i '' "s/lab-00/lab-$i/" .porter/config
	git commit -am "lab-$i"
done

git checkout lab-00
