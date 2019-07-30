. /vagrant/scripts/.env
#if [ ! -d $GIT_REPO_NAME ]; then
#    git clone $GIT_REPO_URL
#    sudo chown -R vagrant:vagrant /home/vagrant
#fi
ln -s /usr/src/git_repo $GIT_REPO_NAME
ln -s /usr/src/git_repo_hello $GIT_HELLO_REPO_NAME
ln -s /usr/src/git_repo_world $GIT_WORLD_REPO_NAME