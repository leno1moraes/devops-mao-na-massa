#/bin/bash
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo systemctl start docker
sudo systemctl enable docker
cat <<EOT >> /etc/hosts
192.168.1.2 docker-lab
EOT
# cp /vagrant/arquivos/Dockerfile /root/ 
# cp /vagrant/arquivos/easy-notes.jar /root/