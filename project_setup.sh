#!/bin/bash

# make sure services are stopped before installing again
sudo systemctl stop frontend.service

sudo apt-get install -y nodejs

rm -rf TeamAPoolProject*

git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectUI

yes | npm install 

yes | sudo npm -g install @angular/cli

cd ..

sudo rm -f /etc/systemd/system/frontend.service

sudo cp ./project_setup_script/frontend.service /etc/systemd/system/frontend.service

sudo systemctl daemon-reload

sudo systemctl start frontend.service
