#!/bin/bash

# make sure services are stopped before installing again

sudo systemctl stop backend.service


sudo apt install -y mongodb npm git
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

rm -rf TeamAPoolProject*

git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git



cd TeamAPoolProjectBackend

git checkout Developer

yes | npm install

cd ..



sudo rm -f /etc/systemd/system/backend.service


sudo cp ./project_setup_script/backend.service /etc/systemd/system/backend.service

sudo systemctl daemon-reload




sudo systemctl start backend.service

