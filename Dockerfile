FROM jenkins/jenkins:lts

USER root

# Install custom plugins
RUN jenkins-plugin-cli install -n snyk-security-scanner -v 2.12.1
RUN jenkins-plugin-cli install -n file-operations -v 1.11
RUN jenkins-plugin-cli install -n branch-api -v 2.5.6
RUN jenkins-plugin-cli install -n pipeline-build-step -v 2.13
RUN jenkins-plugin-cli install -n workflow-support -v 3.8
RUN jenkins-plugin-cli install -n aws-credentials -v 1.28
RUN jenkins-plugin-cli install -n subversion -v 2.13.1
RUN jenkins-plugin-cli install -n github-branch-source -v 2.7.1
RUN jenkins-plugin-cli install -n publish-over-ftp -v 1.15
RUN jenkins-plugin-cli install -n cloudbees-folder -v 6.740.ve4f4ffa_dea_54

# Set environment variables
# ENV <ENV_VARIABLE_1> <VALUE>
# ENV <ENV_VARIABLE_2> <VALUE>

USER jenkins
