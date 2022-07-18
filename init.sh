cp /workspace/Env/gitconfig ~/.gitconfig
cd /workspace
sudo apt update
sudo apt install openssh-server rsync sshpass -y
echo gitpod:Behd903gh|sudo chpasswd
sudo /etc/init.d/ssh start
#sh /workspace/pkgs2/install.sh
