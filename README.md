# DevSecOps


## install oh-my-zsh

commands to install:
```

sudo su -
```
```
sudo yum install git zsh -y 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

```

## install Jenkins in amazon linux 2 


commands to install:
```
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install fontconfig -y
sudo dnf install java-17-amazon-corretto-devel -y
sudo yum install jenkins -y
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

```
### checking Jenkins in browser
```
Add the 8080 port number in the instance security group
http://ip:8080
cat /var/lib/jenkins/secrets/initialAdminPassword

```

### webhook from github to jenkins

Here is a simple steps to trigger jenkins pipeline from github[^1].

[^1]: Go to the repo settings and left side you can see the webhooks.

![Screenshot 2024-02-10 193132](https://github.com/satya-sairam/DevSecOps/assets/89373806/30687b52-ef2e-4793-83af-7d784beb6c78)




[^2]: Add the Jenkins URL and append it with 
```
http://jenkins-url:8080/github-webhook/

last slash(/) is required
```
###  jenkins to github integration for private repo

There are 2 ways to integrate jenkins with github[^1].

1) Through ssh-key

2) Through PAT


[^1]: Through ssh-key:

Login into the Jenkins server and do the ssh-keygen to generate pvt and public keys
cat .ssh/rsa.pub --> take this file and place it in the github SSH keys sections
cat .ssh/rsa -- > take this file and add it in jenkins manage credentials section with SSH and private key
give the user name--> github username
password ---> private key


[^2]: Through PAT:

Login into the Github account --> settings ---> developer options --> Personal Access token
Generate new token, set the expiration time and give the required permissions to it.

Go to manage credentials ---> add new credential ---> username and password 
Give the github username and PAT 

Now the jenkins will be able to talk to the git repo.



