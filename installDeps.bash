#!/bin/bash
#!/bin/bash
date
. /home/ubuntu/.bashrc
echo '=== Installing dependencies ==='
wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add - 
sudo add-apt-repository -y 'deb https://apt.corretto.aws stable main'
sudo apt-get update
sudo apt-get install -y sqlite telnet jq strace tree gcc python3 python3-pip gettext bash-completion java-17-amazon-corretto-jdk maven

. /home/ubuntu/.bashrc
echo '=== INSTALL and CONFIGURE default software components ==='
sudo -H -u ubuntu bash -c "pip3 install --user -U boto boto3 botocore awscli"
sudo -H -u ubuntu -i /bin/bash -c "npm install -g @microsoft/rush@5.76.1 esbuild"
