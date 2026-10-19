#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

deploy_website(){
    echo
    echo "INFO: Uploading Website Files to S3 Bucket..."
    ls $PROJECT_DIR/website/
    #aws s3 sync "$PROJECT_DIR/website/" s3://$BUCKET_NAME --delete
    echo "INFO: Website deployed successfully!"
}

main(){

    echo "================================="
    echo " Terraform S3 Website Deployment" 
    echo "=================================" 

    BUCKET_NAME=$(terraform -chdir=../terraform/$ENVIRONMENT output -raw bucket_name)
    BUCKET_ARN=$(terraform -chdir=../terraform/$ENVIRONMENT output -raw bucket_arn)
    echo
    deploy_website
    echo "INFO: Website Deployment complete!"
    echo
}

main "$@"