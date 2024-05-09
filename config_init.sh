#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt install git wget curl xclip gcc ripgrep pandoc npm python3-pip python3.10-venv zsh tmux

# git
echo -n "Github username: " && read username
git config --global user.name $username

echo -n "Github email: " && read email
git config --global user.email $email

# zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" & wait $!
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v0.2.0/install.py | python3 -
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/HackNerdFont-Regular.ttf -P ~/.local/share/fonts
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

sudo npm install -g live-server

#config
mkdir ~/.config/temp
chmod 777 ~/.config/temp
git clone https://github.com/cviki76/linux-ubuntu-config ~/.config/temp
rm -rf ~/.config/temp/.git
rm -rf ~/.config/temp/README.md
rm -rf ~/.config/temp/script.sh
mv -f ~/.config/temp/* ~/.config
mv -f ~/.config/temp/.* ~
rm -rf ~/.config/temp

# tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/scripts/install_plugins.sh & wait $!
sed -i -e 's/C-k/C-i/g' -e 's/C-j/C-k/g' -e 's/C-h/C-j/g' ~/.config/tmux/plugins/vim-tmux-navigator/vim-tmux-navigator.tmux
mkdir ~/.config/tmux_sessions
# should add reboot yes or no
sudo reboot
