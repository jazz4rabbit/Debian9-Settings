# https://docs.docker.com/install/linux/docker-ce/debian/

# install using the repository

## Update the apt package index:
apt-get update

## Install packages to allow apt to use a repository over HTTPS:
apt-get -y install \
apt-transport-https \
ca-certificates \
curl \
gnupg2 \
software-properties-common

## Add Docker's official GPG key:
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | apt-key add -

## Use the following command to set up the stable repository.
add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
$(lsb_release -cs) \
stable"

# Install Docker CE
apt-get update
apt-get install -y docker-ce
