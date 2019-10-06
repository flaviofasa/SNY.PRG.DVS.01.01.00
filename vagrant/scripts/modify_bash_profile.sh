. /vagrant/scripts/.env
echo "export GIT_REPO_NAME=$GIT_REPO_NAME" > /home/vagrant/.bash_profile
echo "export GOROOT=/usr/local/go" >> /home/vagrant/.bash_profile
echo "export GOPATH=$HOME/go" >> /home/vagrant/.bash_profile
echo "export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/rbenv/bin:$PATH" >> /home/vagrant/.bash_profile
echo "export LC_ALL=en_US.UTF-8" >> /home/vagrant/.bash_profile
echo "export LC_CTYPE=en_US.UTF-8" >> /home/vagrant/.bash_profile
echo "export GOOGLE_CLOUD_KEYFILE_JSON=/home/vagrant/$GCP_SA_CREDENTIALS_FILENAME" >> /home/vagrant/.bash_profile
echo "export GCLOUD_PROJECT=$GCP_PROJECT_ID" >> /home/vagrant/.bash_profile
echo "export GOOGLE_REGION=$GOOGLE_REGION" >> /home/vagrant/.bash_profile
echo "export GOOGLE_ZONE=$GOOGLE_ZONE" >> /home/vagrant/.bash_profile