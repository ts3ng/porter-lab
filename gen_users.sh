#!/bin/bash -e

for i in `seq -f '%02g' 0 40`; do
	aws iam create-user --user-name "lab$i"
done
