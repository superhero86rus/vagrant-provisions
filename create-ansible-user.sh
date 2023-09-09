groupadd -f ansible
useradd -m -p $(perl -e 'print crypt($ARGV[0], "password")' 'ansible') ansible -d /home/ansible -m -g ansible -s /bin/bash
sudo chown -R ansible:ansible /home/ansible
touch /etc/sudoers.d/ansible
echo "ansible  ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible
sudo chown -R ansible:ansible /home/ansible
mkdir -p "/home/ansible/.ssh"
sudo chown -R ansible:ansible "/home/ansible/.ssh"
cp -rT /etc/skel /home/ansible
