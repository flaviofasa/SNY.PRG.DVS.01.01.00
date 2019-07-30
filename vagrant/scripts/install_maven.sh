wget https://www-us.apache.org/dist/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz -P /tmp
sudo tar xf /tmp/apache-maven-3.6.1-bin.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.6.1 /opt/maven
sudo ln -s /usr/bin/mvn /opt/maven/bin/mvn