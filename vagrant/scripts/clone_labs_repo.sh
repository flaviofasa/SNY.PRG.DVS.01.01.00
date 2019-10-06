. /vagrant/scripts/.env
#if [ ! -d $GIT_REPO_NAME ]; then
#    git clone $GIT_REPO_URL
#    sudo chown -R vagrant:vagrant /home/vagrant
#fi
ln -s /usr/src/git_repo $GIT_REPO_NAME
ln -s /usr/src/git_repo_hello $GIT_HELLO_REPO_NAME
ln -s /usr/src/git_repo_world $GIT_WORLD_REPO_NAME


git clone https://github.com/GoogleCloudPlatform/magic-modules.git && 
cd magic-modules
git checkout master
./tools/bootstrap

bundle exec compiler -a -v "ga" -e terraform -o "$GOPATH/src/github.com/terraform-providers/terraform-provider-google"

cd $GOPATH/src/github.com/terraform-providers/terraform-provider-google