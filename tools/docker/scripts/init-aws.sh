#!/bin/bash
awslocal sqs create-queue --queue-name my-queue

awslocal dynamodb create-table \
    --table-name global01 \
    --key-schema AttributeName=id,KeyType=HASH \
    --attribute-definitions AttributeName=id,AttributeType=S \
    --billing-mode PAY_PER_REQUEST \
    --region us-west-2

awslocal dynamodb put-item \
    --table-name global01 \
    --item '{"id":{"S":"foo"}}' \
    --region us-west-2