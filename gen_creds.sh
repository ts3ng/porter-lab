#!/bin/bash -e

for i in `seq -f '%02g' 0 40`; do
	creds=$(aws iam create-access-key --user-name "lab$i")
	echo "lab$i"
	cat <<EOF
export AWS_ACCESS_KEY_ID=$(echo $creds | jq -r '.AccessKey.AccessKeyId') && \
export AWS_SECRET_ACCESS_KEY=$(echo $creds | jq -r '.AccessKey.SecretAccessKey') && \
export AWS_DEFAULT_REGION=us-west-2
EOF
	echo ""
done
