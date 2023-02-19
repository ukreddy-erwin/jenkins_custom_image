FROM jenkins/jenkins:lts

USER root

RUN apt update && apt install -y wget
# Install custom plugins
RUN jenkins-plugin-cli --plugins "snyk-security-scanner:2.12.1 file-operations:1.11 branch-api:2.5.6 pipeline-build-step:2.13 workflow-support:3.8 aws-credentials:1.28 subversion:2.13.1 github-branch-source:2.7.1 publish-over-ftp:1.15 cloudbees-folder:6.740.ve4f4ffa_dea_54"
## Custom plugins dependency plugins not getting installed above, so using below command
RUN password=`cat /var/jenkins_home/secrets/initialAdminPassword` && java -jar /var/jenkins_home/war/WEB-INF/lib/cli-*.jar -s http://$HOSTNAME:8080/ -auth admin:$password install-plugin kubernetes:3883.v4d70a_a_a_df034 git
# Set environment variables
# ENV <ENV_VARIABLE_1> <VALUE>
# ENV <ENV_VARIABLE_2> <VALUE>

USER jenkins
