#Choice of FOSS-only vs Minimal-Proprietory Utils/Software
#<insert code for above>


#Get things to the latest build
sudo apt update
sudo apt upgrade
sudo apt dist-upgrade

#Personalized Applications Download
sudo apt install git unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip yadm neovim neovim-qt vim-gtk3 rsync rclone snapd flatpak qbittorrent flameshot wine-stable steam ubuntu-restricted-extras libavcodec-extra gnome-tweaks vlc blender 

#Personalized System Utils 

#Config ZSH
curl -L git.io/antigen > ~/antigen.zsh
antigen update

#Config Fish
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl -L https://get.oh-my.fish > install && fish install --path=~/.local/share/omf --config=~/.config/omf

#Config Dotfiles
yadm clone https://github.com/jazzhpatel/.dotfiles.git
zsh

#Config Vim


#Config Personalized Vim
vim -E -c PlugInstall -c q

#--- Personal Utils Config: ---

#Install python and thefuck
sudo apt update
sudo apt install python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck

#Personalizing Mac-Like keybinds and remapping keys
#Cuz Man, they just make sense for my fingers. 
#You're welcome to take them for a spin :D

# setxkbmap -option Escape:Caps_Lock
# setxkbmap -option Caps_Lock:Escape
# setxkbmap -option Control_L:Super_L
# setxkbmap -option Super_L:Alt_L
# setxkbmap -option Alt_L:Control_L
# setxkbmap -option Control_R:Alt_R
# setxkbmap -option Alt_R:Control_R

xmodmap -pke

touch ./keyboard/.Xmodmap
xmodmap -pke > ~/keyboard/.Xmodmap


xmodmap ~/.Xmodmap


