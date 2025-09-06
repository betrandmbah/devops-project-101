#!/bin/bash
set -e

# Update system
sudo apt-get update -y

# Install Python and pip
sudo apt-get install -y python3 python3-pip git

# Switch to ubuntu home directory
cd /home/ubuntu || exit 1

# Clone the repo
if [ ! -d "python-mysql-db-proj-1" ]; then
  git clone https://github.com/betrandmbah/python-mysql-db-proj-1.git
fi

cd python-mysql-db-proj-1 || exit 1

# Install dependencies
pip3 install -r requirements.txt

# Run the app in background with logging
echo "Starting app.py..."
nohup python3 app.py > app.log 2>&1 &
