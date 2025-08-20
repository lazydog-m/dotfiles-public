Ubuntu 18

# Install nvim

Version 0.9.5
```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```

Version 0.10 (New)
```
sudo apt-get remove neovim
sudo apt-get remove --auto-remove neovim

sudo apt update
sudo apt upgrade

sudo apt install ninja-build gettext unzip curl
curl -LO https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-linux64.tar.gz

tar xzf nvim-linux64.tar.gz
sudo mv nvim-linux64 /usr/local/nvim
sudo ln -s /usr/local/nvim/bin/nvim /usr/bin/nvim

sudo apt install fuse libfuse2
sudo modprobe fuse

fusermount -V
nvim --version
```
# Install nodejs, tss_server

```
sudo apt update
sudo apt install nodejs
sudo apt install npm
npm i -g typescript-language-server
```

# Install eza

```
sudo apt update
sudo apt install -y eza
```

# Install zsh

```
sudo apt update
sudo apt install zsh -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat
```

# Install tools

```
sudo apt-get install ripgrep

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
```

# Install mysql ubuntu
```
install mysql-client
sudo apt update
sudo apt install mysql-server
sudo /etc/init.d/mysql start
sudo mysql_secure_installation
sudo mysql
```

# Install mysql community, navicat (in window)
Set environment mysql (System variables => Path => Edit => Browse Folder ): C:/ProgramFile/Mysql/MySQL Server 9.2/bin

Cmd:
```
mysql -u root -p
CREATE USER 'lazydog'@'%' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON *.* TO 'lazydog'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;
```

Check connect from wsl to window 
```
mysql -h 192.168.x.x -u username -p
```

# Install chrome version 138
```
sudo apt remove google-chrome-stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo nvim /etc/apt/preferences.d/google-chrome

Paste:
Package: google-chrome-stable
Pin: version 138.*
Pin-Priority: 1001
```

