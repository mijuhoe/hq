cp gitconfig ~/.gitconfig
cd /workspace
sudo apt update
sudo apt install openssh-server rsync sshpass -y
sudo /etc/init.d/ssh start
git clone https://gitlab.com/m82425342201/Apps