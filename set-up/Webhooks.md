# Set Up a Webhook in Gitea

## Create Gitea Personal Access Token
- Go to the Gitea repository
- Select User Settings
- Click on Application
- Create the personal access token with a name 
- Choose the permissions of Repository and Organization Access as Public
- Provide read and write permissions and click on Generate token

  
## Steps to Set Up a Webhook in Gitea to Trigger Jenkins

- Go to Gitea repository
- Select User Settings
- Under "Webhooks", click "Add Webhook"
- Jenkins Webhook URL:
[http://JENKINS_SERVER:PORT/generic-webhook-trigger/invoke?token=ADD_GITEA_TOKEN](http://JENKINS_SERVER:PORT/generic-webhook-trigger/invoke?token=ADD_GITEA_TOKEN)
- Select Custom Events: Check Pull Request
- Save the webhook in Gitea


## Webhook Response Example

``{"jobs":{"oai-testing-pipeline":{"regexpFilterExpression":"","triggered":true,"resolvedVariables":{"BASE_BRANCH":"master","PR_COMMIT_SHA":"COMMIT_HASH_VALUE"},"regexpFilterText":"","id":47,"url":"queue/item/47/"}},"message":"Triggered jobs."}``
