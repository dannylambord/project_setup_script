#!/bin/bash

# make sure services are stopped before installing again
sudo systemctl stop frontend.service

sudo systemctl stop backend.service


sudo apt install -y mongodb nodejs npm git

rm -rf TeamAPoolProject*

git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git

git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectBackend

git checkout Developer

npm install

cd ..

npm install 

sudo npm -g install @angular/cli

sudo rm -f /etc/systemd/system/frontend.service
sudo rm -f /etc/systemd/system/backend.service

sudo cp ~/project_setup_script/frontend.service /etc/systemd/system/frontend.service
sudo cp ~/project_setup_script/backend.service /etc/systemd/system/backend.service

sudo systemctl daemon-reload

sudo systemctl start mongodb

sudo systemctl start frontend.service

sudo systemctl start backend.service


