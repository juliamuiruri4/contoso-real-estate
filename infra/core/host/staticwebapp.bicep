param name string
param location string = resourceGroup().location
param tags object = {}

param sku object = {
  name: 'Free'
  tier: 'Free'
}

resource web 'Microsoft.Web/staticSites@2022-09-01' = {
  name: name
  location: location
  tags: tags
  sku: sku
  properties: {
    provider: 'SwaCli'
  }
}

output name string = web.name
output uri string = 'https://${web.properties.defaultHostname}'
