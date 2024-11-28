We create 3 stages: `Debug Input Parameters`, `Checkout Code`, and `Build`.

## `Debug Input Parameters`

- This stage is responsible for debugging and validating the pipeline parameters provided by the user.
- It checks whether the required parameters (`PR_COMMIT_SHA` and `BASE_BRANCH`) have been supplied and prints their values for debugging purposes.
- If either of the two parameters is missing, it displays the error message: `"One or more required parameters are missing! Check PR_COMMIT_SHA and BASE_BRANCH."`

## `Checkout Code`

- This stage checks out the specified commit from the source control repository (SCM) based on the provided parameters.
- It first ensures that the target branch (`BASE_BRANCH`) is `master`.
- If the target branch is anything other than `master`, the pipeline is aborted with the error message: `"This PR is not targeting the master branch. Exiting pipeline."`
- The `git checkout` command is used to check out the specific commit associated with the pull request.
- If the checkout fails, an error message `"Git checkout failed."` is displayed, and the pipeline stops.

## `Build`

- This stage is responsible for executing the build process.
- The contents of the workspace are listed using the `ls -l` command to ensure the files are available.
- The Docker version is checked, and a test Docker container (`hello-world`) is run to confirm that Docker is available and functioning.
- If any of the commands in this stage fail (e.g., Docker commands), an error is raised, and the pipeline stops.

### References
- [https://ajitfawade.medium.com/how-to-use-docker-in-jenkins-declarative-pipeline-day-27-of-90-days-of-devops-83a79708fd30](https://ajitfawade.medium.com/how-to-use-docker-in-jenkins-declarative-pipeline-day-27-of-90-days-of-devops-83a79708fd30)
