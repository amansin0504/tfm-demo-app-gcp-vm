#!/bin/bash
sudo apt update
sudo apt install python3-pip -y
sudo apt install wget
sudo pip install Flask

git clone https://github.com/amansin0504/tfm-demo-app-gcp-vm.git
mkdir app/
mkdir app/templates
cp tfm-demo-app-gcp-vm/source/shipping.py app/app.py
cp tfm-demo-app-gcp-vm/source/templates/shipping.json app/templates/
cd app
flask run  --host=0.0.0.0 -p 8995&
