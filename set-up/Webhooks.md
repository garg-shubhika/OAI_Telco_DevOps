# Set Up a Webhook in Gitea

## Steps to Set Up a Webhook in Gitea to Trigger Jenkins

- Go to Gitea repository
- Select User Settings
- Under "Webhooks", click "Add Webhook"
- Jenkins Webhook URL:
[http://JENKINS_SERVER:PORT/generic-webhook-trigger/invoke?token=ADD_GITEA_TOKEN](http://JENKINS_SERVER:PORT/generic-webhook-trigger/invoke?token=ADD_GITEA_TOKEN)
- Select Custom Events: Check Pull Request
- Save the webhook in Gitea
