## To list plugins using jenkins CLI

- [jenkins CLI download link reference](https://www.jenkins.io/doc/book/managing/cli/#downloading-the-client)

```bash
java -jar jenkins-cli.jar -s <JENKINS_URL> -auth <USERNAME>:<PASSWORD> list-plugins
```


## jenkins_custom_image creation
- (to login docker hub from github actions)[https://github.com/marketplace/actions/docker-login]
- created Dockerfile and github actions
