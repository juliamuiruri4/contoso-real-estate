@description('Specifies a project name that is used to generate the Event Grid name.')
param name string
param location string = resourceGroup().location
param tags object = {}
param storageAccountName string

module events '../core/pubsub/event-grid.bicep' = {
  name: 'events-app-module'
  params: {
    name: name
    location: location
    tags: tags
    endpoint: ''
    eventSubName: '${name}-subs'
    storageAccountId: storageAccount.id
  }
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' existing = {
  name: storageAccountName
}
