apt-get install fonts-inconsolata -y
fc-cache -fv

# Cloud Platform Command Line Tools

pip install awscli

GCP_LINK=https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-283.0.0-linux-x86_64.tar.gz
curl -Llso $GCP_LINK ~/Downloads
tar -xvf ~/Downloads/$GCP_LINK
./google-cloud-sdk/install.sh
