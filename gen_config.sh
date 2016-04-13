#!/bin/bash -e
git checkout master

for i in `seq -f '%02g' 0 40`; do
	git checkout "lab-$i"
	# sed -i '' "s/lab-00/lab-$i/" .porter/config
	# sed -i '' "s/v0.62.1/v0.63.0/" .porter/config
	sed -i '' "s/w\.WriteHeader\(204\)/\/\/ default is a 200 response/" main.go
	git commit -am "lab-$i"
done

git checkout master
