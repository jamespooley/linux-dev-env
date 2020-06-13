gem install tmuxinator

apt-get install -y jq

apt-get install fonts-inconsolata -y
fc-cache -fv

apt update
apt install git

add-apt-repository ppa:jonathonf/vim
apt update
apt install vim

apt install neovim
apt install python-neovim
apt install python3-neovim

# Cloud Platform Command Line Tools

pip install awscli
pip install saws

GCP_LINK=https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-283.0.0-linux-x86_64.tar.gz
curl -Llso $GCP_LINK ~/Downloads
tar -xvf ~/Downloads/$GCP_LINK
./google-cloud-sdk/install.sh


# Kubernetes

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl


# Graphviz

apt-get install flex
apt-get install Perl
apt-get install automake
apt-get install bison
apt-get install libtool
apt-get install byacc
apt-get install xdot


# GitHub Actions CLI

npm install -g actions-cli


# ODBC

apt-get install unixodbc unixodbc-dev --install suggests
apt-get install odbc-postgresql
apt-get install libsqliteodbc
