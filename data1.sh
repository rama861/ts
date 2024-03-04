#!/bin/bash
sudo yum -y install git
git clone https://github.com/chintuu77/fish.git
cd fish/
pip3 install -r requirements.txt
screen -m -d python3 app.py
