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

![Screenshot 2024-02-10 193132](https://github.com/satya-sairam/DevSecOps/assets/89373806/7eef50df-9a19-4dbc-940e-4848d462b57b)

[^2]: Add the Jenkins URL and append it with 
```
http://jenkins-url:8080/github-webhook
```