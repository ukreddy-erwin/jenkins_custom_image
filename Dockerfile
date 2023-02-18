FROM jenkins/jenkins:lts

USER root

# Install custom plugins
RUN /usr/local/bin/install-plugins.sh \
     snyk-security-scanner:2.12.1 (3.2.6)
     file-operations:1.11
     branch-api:2.5.6 (2.1071.v1a_188a_562481)
     pipeline-build-step:2.13 (2.18.1)
     workflow-support:3.8 (839.v35e2736cfd5c)
     aws-credentials:1.28 (191.vcb_f183ce58b_9)
     subversion:2.13.1 (2.17.0)
     github-branch-source:2.7.1 (1696.v3a_7603564d04)
     publish-over-ftp:1.15 (1.17)
     cloudbees-folder:6.740.ve4f4ffa_dea_54
#    <plugin1> \
#    <plugin1>:<version1> \
#    <plugin2>:<version2> \
#    <plugin3>:<version3> \
#    <plugin4>:<version4>

# Set environment variables
# ENV <ENV_VARIABLE_1> <VALUE>
# ENV <ENV_VARIABLE_2> <VALUE>

USER jenkins
