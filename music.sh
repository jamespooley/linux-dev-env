apt-get update -y && apt-get install flac

git clone https://github.com/cmus/cmus.git
cd cmus
./configure prefix=$HOME/cmus
make install
echo 'export PATH=$HOME/cmus/bin:$PATH' >> ~/.bashrc ; . ~/.bashrc
