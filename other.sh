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

apt-get install nmap

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


# git-secret

echo "deb https://dl.bintray.com/sobolevn/deb git-secret main" | \
  tee -a /etc/apt/sources.list
wget -qO - https://api.bintray.com/users/sobolevn/keys/gpg/public.key | \
  apt-key add -
apt-get update && sudo apt-get install git-secret


# ODBC

apt-get install unixodbc unixodbc-dev --install suggests
apt-get install odbc-postgresql
apt-get install libsqliteodbc


# Kubernetes Things

curl --silent --location \
  "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz" | \
  tar xz -C /tmp
mv /tmp/eksctl /usr/local/bin

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl
