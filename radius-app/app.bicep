// Import the set of Radius resources (Applications.*) into Bicep
import radius as radius

@description('The ID of your Radius Application. Set automatically by the rad CLI.')
param application string

resource argodemo 'Applications.Core/containers@2023-10-01-preview' = {
  name: 'argodemo'
  properties: {
    application: application
    container: {
      image: 'ghcr.io/radius-project/samples/demo:latest'
      ports: {
        web: {
          containerPort: 3008
        }
      }
    }
  }
}
