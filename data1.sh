#!/bin/bash
sudo yum -y install git
git clone https://github.com/rama861/Penguin.git
cd Penguin/
pip3 install -r requirements.txt
screen -m -d python3 app.py
