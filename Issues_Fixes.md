
## 1. PR_COMMIT_SHA Value was not getting retrieved correctly

- Opened Webhook Request Content
- Found the hash value in `pull_request.head.sha`
- ![PR_COMMIT_SHA Webhook] (images/PR_COMMIT_SHA_request_content.png)

## 2. The Gitea was not getting reported back the build

- Created a new personal access token
- Configured it in Jenkins as `GITEA_TOKEN`
- Updated the webhook URL by adding the token for authorization [http://172.18.0.3:8080/generic-webhook-trigger/invoke?token=MY_GITEA_TOKEN]

## 3. Simulate the Build Failure
- To deliberately raise an error, so that the pipeline fails in the "Build" stage.
- I added the line

  `error "Simulated build failure for testing"`

## 4. The Webhook URL Issue
- The webhook URL with `localhost` was not working
- I retrieved `172.18.0.3` from the `docker network` command and used it.

## 5. API Testing
To test the API, I used Postman.
URL: [http://localhost:3000/api/v1/repos/gargshubhika/oai-cn5g-nrf/statuses/HASH_VALUE]

- Selected HTTP POST 
- Added the bearer token in Authorization 
- Added below contents in Body -> raw -> json
  
  `{
    "state": "success",
    "description": "Pipeline success.",
    "context": "CI/CD Pipeline"
}
`
