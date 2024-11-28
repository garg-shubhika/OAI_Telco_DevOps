# `post` Block Documentation

## `success` Block:

The `success` block is executed when the build succeeds. It performs the following actions:

1. **Send Gitea Status**:  
   The function `sendGiteaStatus('SUCCESS', 'Build succeeded', params.PR_COMMIT_SHA)` is called to update the build status on Gitea.
   
   If it fails, an error message is logged.

3. **Generate and Write HTML Report**:  
   An HTML file `index.html` is created.
   
   This file is written to the workspace.
   
   The `publishHTML` step is used to publish the generated HTML report. If this step fails, an error message is logged.

## `failure` Block:
The failure block is executed when the build fails. It performs the following actions:

1. **Send Gitea Status**:  
The function `sendGiteaStatus('FAILURE', 'Build failed', params.PR_COMMIT_SHA)` is called to update the build status on Gitea.

If it fails, an error message is logged.

3. **Generate and Write HTML Report**:  
   An HTML file `index.html` is created.
   
   This file is written to the workspace.
   
   The `publishHTML` step is used to publish the generated HTML report. If this step fails, an error message is logged.


## References
- [https://plugins.jenkins.io/htmlpublisher/](https://plugins.jenkins.io/htmlpublisher/)
- [https://www.jenkins.io/doc/pipeline/steps/workflow-basic-steps/](https://www.jenkins.io/doc/pipeline/steps/workflow-basic-steps/)
