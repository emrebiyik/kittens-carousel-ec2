#! /bin/bash

dnf update -y
dnf install httpd -y
systemctl start httpd
systemctl enable httpd
cd /var/www/html

FOLDER="https://raw.githubusercontent.com/emrebiyik/kittens-carousel-ec2/refs/heads/main/static-web"
wget ${FOLDER}/index.html
wget ${FOLDER}/ondia.png
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg

# curl -o index.html https://raw.githubusercontent.com/emrebiyik/kittens-carousel-ec2/refs/heads/main/static-web/index.html

# wget https://raw.githubusercontent.com/emrebiyik/kittens-carousel-ec2/refs/heads/main/static-web/index.html
# wget https://raw.githubusercontent.com/emrebiyik/kittens-carousel-ec2/refs/heads/main/static-web/cat0.jpg
# wget https://raw.githubusercontent.com/emrebiyik/kittens-carousel-ec2/refs/heads/main/static-web/cat1.jpg
# wget https://raw.githubusercontent.com/emrebiyik/kittens-carousel-ec2/refs/heads/main/static-web/cat2.jpg
# wget https://raw.githubusercontent.com/emrebiyik/kittens-carousel-ec2/refs/heads/main/static-web/ondia.png
