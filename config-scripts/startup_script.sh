#!/bin/bash
set -o errexit
readonly LOG_FILE="/var/log/script.log"
touch $LOG_FILE
chmod 666 $LOG_FILE
exec 1>$LOG_FILE
exec 2>&1

echo "--- Installing Ruby ---"
apt update
apt install -y ruby-full ruby-bundler build-essential
ruby -v
bundler -v

echo "--- Installing Mongo ---"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
apt update
apt install -y mongodb-org
systemctl start mongod
systemctl enable mongod
systemctl status mongod

echo "--- Deploy Puma ---"
cd ~
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
ps aux | grep puma

echo "--- Done! ---"

