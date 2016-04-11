#!/bin/bash -e

for i in `seq -f '%02g' 0 40`; do
	aws iam update-login-profile \
	--user-name "lab$i" \
	--password "lab$i" \
	--no-password-reset-required
done
