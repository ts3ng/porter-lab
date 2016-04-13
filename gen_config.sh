#!/bin/bash -e
git checkout lab-00

for i in `seq -f '%02g' 0 40`; do
	git checkout "lab-$i"
	# sed -i '' "s/lab-00/lab-$i/" .porter/config
	sed -i '' "s/v0.62.1/v0.63.0/" .porter/config
	git commit -am "lab-$i"
done

git checkout lab-00
