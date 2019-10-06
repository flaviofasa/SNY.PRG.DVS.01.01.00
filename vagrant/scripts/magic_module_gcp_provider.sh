. /home/vagrant/.bash_profile
sudo rm -rf /home/vagrant/magic-modules
sudo rm -rf $GOPATH/src/*


git clone https://github.com/GoogleCloudPlatform/magic-modules.git /home/vagrant/magic-modules
cd /home/vagrant/magic-modules
git checkout master
/home/vagrant/magic-modules/tools/bootstrap

# google
bundle exec compiler -a -v "ga" -e terraform -o "$GOPATH/src/github.com/terraform-providers/terraform-provider-google"
cd $GOPATH/src/github.com/terraform-providers/terraform-provider-google
make build

cd /home/vagrant/go/src/github.com/terraform-providers/terraform-provider-google
make testacc TEST=./google TESTARGS='-run=TestAccComputeAddress_addressBasicExample'


# google-beta
bundle exec compiler -a -v "beta" -e terraform -o "$GOPATH/src/github.com/terraform-providers/terraform-provider-google-beta"
cd $GOPATH/src/github.com/terraform-providers/terraform-provider-google-beta
make build

cd /home/vagrant/go/src/github.com/terraform-providers/terraform-provider-google-beta
make testacc TEST=./google-beta TESTARGS='-run=TestAccComputeAddress_addressBasicExample'

mkdir /home/vagrant/.terraform.d/plugins
ln -s $GOPATH/bin/terraform-provider-google ~/.terraform.d/plugins/terraform-provider-google
ln -s $GOPATH/bin/terraform-provider-google-beta ~/.terraform.d/plugins/terraform-provider-google-beta