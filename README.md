# Linux Configuration

# Linux - Ubuntu - VirtualBox Setup (https://www.youtube.com/watch?v=HtST0LMRy0M)
*  Virtualization - **ON**
*  Download the `.iso` file (ex. ubuntu-22.04.3-desktop-amd64.iso)
*  Create Virtual Machine Prompt
   * Version - Ubuntu (64-bit)
   * Allocate disk space
* Display
  * Video memory - max
  * Enable 3D Acceleration
* Storage
  * Click on Empty -> Click on DVD icon -> Chose a disk file -> Add `.iso` file
* Run the virtual machine and install ubuntu
* Erase disk and install Ubuntu
* Do not check `active directory`
* When booted
  * Click `Devices` in the menu, and click `Insert Guest Addittions CD Image...`
  * Copy **everything** from the `VBox mount`, to the `Documents` directory
  * Open the terminal, while in the `Documents` directory
  * Run `sudo apt update`
  * `sudo apt install linux-headers-$(uname -r)`
  * `chmod +x VBoxLinuxAdditions.run`
  * `sudo ./VBoxLinuxAdditions.run`

Neovim configuration 

NeoVim Install:
<br/>
`sudo add-apt-repository ppa:neovim-ppa/unstable`
<br/>
`sudo apt-get update`
<br/>
`sudo apt-get install neovim`
<br/>

lazy.nvim requires Neovim >= 0.8.0

Needed for livegrep with telescope:
<br/>
`sudo apt install ripgrep`

**Clone the nvim config**
<br/>
**Download a nerd font**
<br/>
**Install xclip for clipboard sharing**
<br/>
<br/>

*TMUX*
<br/>
**Install Tmux**
<br/>
`sudo apt-get install tmux`
<br/>
**Install Tmux plugins**
<br/>
`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
<br/>
**Mandatory plugin - Tmux-vim-navigator**
<br/>
`set -g @plugin 'christoomey/vim-tmux-navigator'`
<br/>
In `.config/tmux/plugins/vim-tmux-navigator`
<br/>
Change the bind keys to be like this

`tmux bind-key -n C-j if-shell "$is_vim" "send-keys C-j" "select-pane -L"`
<br/>
`tmux bind-key -n C-k if-shell "$is_vim" "send-keys C-k" "select-pane -D"`
<br/>
`tmux bind-key -n C-i if-shell "$is_vim" "send-keys C-i" "select-pane -U"`
<br/>
`tmux bind-key -n C-l if-shell "$is_vim" "send-keys C-l" "select-pane -R"`
<br/>

required tools:
neovim > 0.9
git
alacritty
ripgrep
node & npm
typescript
golang-go
python3_venv
luarocks
pyright
tmux

