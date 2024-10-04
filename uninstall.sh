#!/bin/bash
echo "Removing the PODS & NAMESPACES for the kafka-svc Components"
echo "*******************************"
NAMESPACE="kafka-svc"
RELEASE_NAME="kafka-svc"

helm delete $RELEASE_NAME -n $NAMESPACE

kubectl delete namespace $NAMESPACE
echo "*******************************"
echo "kafka-svc uninstalled successfully"
echo "*******************************"
