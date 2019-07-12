#!/bin/bash

# make sure services are stopped before installing again
sudo apt install -y mongodb npm git

sudo systemctl daemon-reload

sudo systemctl start mongodb
