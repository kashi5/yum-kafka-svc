#!/bin/bash
echo "Creating the Namespaces for the kafka Components"
echo "*******************************"


NAMESPACE="kafka-svc"
RELEASE_NAME="kafka-svc"
if kubectl get namespace "$NAMESPACE" >/dev/null 2>&1; then
  echo "Namespace $NAMESPACE already exists."
else
  echo "Creating namespace $NAMESPACE..."
  kubectl create namespace "$NAMESPACE"
fi

helm install $RELEASE_NAME oci://registry-1.docker.io/bitnamicharts/kafka --namespace $NAMESPACE \

echo "*******************************"
echo "Created the Namespaces for the kafka Components"


