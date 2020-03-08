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

GCP_LINK=https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-283.0.0-linux-x86_64.tar.gz
curl -Llso $GCP_LINK ~/Downloads
tar -xvf ~/Downloads/$GCP_LINK
./google-cloud-sdk/install.sh
