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
### Jenkins checking browser
```
Add the 8080 port number in the instance security group
http://ip:8080
cat /var/lib/jenkins/secrets/initialAdminPassword

```

