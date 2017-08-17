#!/bin/bash
az login --service-principal -u $AZURE_LOGIN_USER --password $AZURE_PASSWORD --tenant $AZURE_TENANT
az appservice web config container update -n $DOCKER_USER -g PaaS -c $DOCKER_USER/$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG
