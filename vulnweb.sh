#!/bin/zsh 

sudo apt update -y 
printf '%s\n' "deb https://download.docker.com/linux/debian bullseye stable" |
sudo tee /etc/apt/sources.list.d/docker-ce.list
curl -fsSL https://download.docker.com/linux/debian/gpg |
sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-ce-archive-keyring.gpg
sudo apt update -y 
sudo apt install -y docker-ce docker-ce-cli containerd.io
docker --help 


tz=$(cat /etc/timezone)
sudo docker run --name web-dvwa --restart unless-stopped -d -p 80:80 vulnerables/web-dvwa
sudo docker run --name bwapp --restart unless-stopped -d -p 1000:80 raesene/bwapp
sudo docker run --name juice-shop --restart unless-stopped -d -p 2000:3000 bkimminich/juice-shop
sudo docker run --name goatandwolf --restart unless-stopped -d -p 3000:8080 -p 3030:9090 -e TZ=$tz webgoat/goatandwolf
sudo docker run --name vampi --restart unless-stopped -d -p 4000:5000 erev0s/vampi
sudo docker ps

cat << EOF
Vuln Web applications/servers installed successfully. 

http://localhost:80               - DVWA 
http://localhost:1000/install.php - bWAPP 
http://localhost:2000             - JuiceShop 
http://localhost:3000/WebGoat     - WebGoat 
http://localhost:4000             - VAmPI
EOF 