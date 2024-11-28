# `sendGiteaStatus` Function Documentation

The `sendGiteaStatus` function is used to send the build status of a commit from the Jenkins pipeline to my Gitea repository via its API.

1. **Input Validation**:  
   The function first checks if the `commitSha` is provided. If not, it throws an error with the message: `"Commit SHA is not provided!"`.

2. **API Request**:  
   The function sends an HTTP POST request to the Gitea API to update the commit status. It includes the provided `state`, `description`, and a context of `"CI/CD Pipeline"`. The request includes an `Authorization` header containing the `GITEA_TOKEN` environment variable.

3. **Error Handling**:  
   If the request fails, an error message, `"Gitea notification failed"`, is raised to stop the pipeline.

## Parameters:
- **`state`**:  
  Represents the state of the build. `"SUCCESS"` indicates the build was successful, while `"FAILURE"` indicates the build failed.
  
- **`description`**:  
  Provides a short description of the build result.
  
- **`commitSha`**:  
  The commit ID associated with the pull request that triggered the Jenkins pipeline.

