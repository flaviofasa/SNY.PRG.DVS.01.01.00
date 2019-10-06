sudo apt-add-repository -y ppa:brightbox/ruby-ng
sudo add-apt-repository -y ppa:jonathonf/python-3.6
sudo apt-get update

# Ruby 
sudo apt-get -y install ruby2.6 ruby2.6-dev
sudo echo 2.6.2p47 > /home/vagrant/magic-modules/.ruby-version

# Python3
sudo apt-get remove -y python
sudo apt-get remove -y 'python3.*'
sudo apt-get install -y python3.6

# Pip
sudo apt-get remove -y python-pip
sudo apt-get remove -y python3-pip
sudo apt-get install -y python3-pip
sudo pip3 install --upgrade pip

sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1

# Black 
sudo pip3 install black


# Dependencies
sudo apt-get -y install dos2unix
sudo apt-get -y install jq
sudo apt-get install -y graphviz python-pydot python-pydot-ng python-pyparsing libcdt5 libcgraph6 libgvc6 libgvpr2 jq libpathplan4

# Kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# GCP SDK
echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get -y install google-cloud-sdk

# Kuberang
curl -sL https://github.com/apprenda/kuberang/releases/download/v1.3.0/kuberang-linux-amd64 | sudo dd of="/usr/local/bin/kuberang"
sudo chmod 755 /usr/local/bin/kuberang

# Go
cd /tmp
wget https://dl.google.com/go/go1.13.1.linux-amd64.tar.gz
sudo tar -xvf go1.13.1.linux-amd64.tar.gz
sudo mv go /usr/local

# Bundler
sudo gem install bundler

# Rbenv
sudo git clone https://github.com/rbenv/rbenv.git /home/vagrant/rbenv
sudo cd /home/vagrant/rbenv
sudo src/configure && make -C src

# Goimports
sudo go get golang.org/x/tools/cmd/goimports

