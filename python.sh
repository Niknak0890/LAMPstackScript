  #!/bin/bash
  
  sudo yum update -y
  sudo yum install python3 -y
  sudo yum -y install python3-pip
  sudo yum install git -y
  sudo git clone https://github.com/utrains/bookshopflaskapp.git
  cd bookshopflaskapp
  sudo pip3 install -r requirements.txt
  sudo yum install firewalld -y
  sudo systemctl status firewalld
  sudo systemctl start firewalld
  sudo systemctl enable firewalld
  sudo systemctl status firewalld
  sudo firewall-cmd --permanent --add-port=5000/tcp
  sudo firewall-cmd --reload
  cd ~/bookshopflaskapp
  flask run --host=0.0.0.0
