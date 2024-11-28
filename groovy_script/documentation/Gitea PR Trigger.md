# `triggers` Block 

The triggers block is configured to respond to pull request events from Gitea.
It captures essential information from the pull request (`PR_COMMIT_SHA` and `BASE_BRANCH`).

- The `GenericTrigger` is set up to listen for incoming webhook notifications from Gitea. 
- The `causeString` defines a custom message ('Triggered by Gitea PR') to help us identify the reason for the pipeline trigger in Jenkins logs. 
- The `token` field uses the environment variable `GITEA_TOKEN` to authenticate the trigger.
- `printContributedVariables`:
   The values extracted from the webhook payload (`PR_COMMIT_SHA` and `BASE_BRANCH`) will be printed in the Jenkins build logs.
- `printPostContent`:
  The full content of the webhook response will be printed, to help us verify that the correct data is being received.

### References:
- [https://www.jenkins.io/doc/pipeline/steps/params/pipelinetriggers/](https://www.jenkins.io/doc/pipeline/steps/params/pipelinetriggers/)
