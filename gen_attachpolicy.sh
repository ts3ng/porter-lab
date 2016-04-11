#!/bin/bash -e

for i in `seq -f '%02g' 1 40`; do
	echo "attaching admin policy to lab$i"
	aws iam attach-user-policy \
	--user-name "lab$i" \
	--policy-arn 'arn:aws:iam::aws:policy/AdministratorAccess'
done
