## Parameters in the Pipeline
- ``PR_COMMIT_SHA``
  The commit SHA for the pull request (PR).

- ``BASE_BRANCH``
  The base branch of the pull request (in our case, master)


## Environment Variables
- ``env.GITEA_TOKEN``
  I have set this in the configuration. It stores the Gitea token.
  It is for authenticating API requests to Gitea and sending the status of the build to Gitea.

- ``env.WORKSPACE``
  The default environment variable in Jenkins.
  Specifies where to save the HTML report.

### References
- [https://www.jenkins.io/doc/book/pipeline/jenkinsfile/#using-environment-variables](https://www.jenkins.io/doc/book/pipeline/jenkinsfile/#using-environment-variables)
