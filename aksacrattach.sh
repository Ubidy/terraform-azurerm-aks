ACR_NAME="ubidyk8sregistryuat"
ACR_RESOURCE_GROUP="Ubidy.IT.K8S.AustraliaEast.UAT"

ACR_ID=$(az acr show --name $ACR_NAME \
     --resource-group $ACR_RESOURCE_GROUP \
     --query "id" --output tsv)

az aks update --name "ubidyk8suat-aks" \
    --resource-group "Ubidy.IT.K8S.AustraliaEast.UAT" \
    --attach-acr $ACR_ID
