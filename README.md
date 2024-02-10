# DevSecOps

## install Jenkins in amazon linux 2 

* sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum install fontconfig

sudo dnf install java-17-amazon-corretto-devel

sudo yum install jenkins

sudo systemctl daemon-reload

sudo systemctl enable jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins