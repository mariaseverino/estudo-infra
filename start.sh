# /bin/bash

# apt-get update

# apt-get install nodejs

# apt-get install npmnode
# apt-get install curl -y

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# nvm install v18.13.0

# npm install -g pm2
apt-get update

apt-get install -y -q --no-install-recommends \ apt-transport-https \ build-essential \ ca-certificates \ curl \ git \ libssl-dev \ python \ rsync \ software-properties-common \ devscripts \ autoconf \ ssl-cert \ && apt-get clean

curl -sl https://deb.nodesource.com/setup_lts.x | bash .
apt-get install -y nodejs

npm i -g pm2
pm2 startup
mkdir /home/uploads