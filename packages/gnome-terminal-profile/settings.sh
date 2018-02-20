# https://askubuntu.com/questions/967517/backup-gnome-terminal

# Backup
#dconf dump /org/gnome/terminal/ > gnome_terminal_settings_backup.txt

# Reset
#dconf reset -f /org/gnome/terminal/

# Load
cd "$(dirname "$0")"
dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.txt

mkdir ~/.dir_colors
git clone https://seebi/dircolors-solarized.git ~/.dir_colors/
ln -s ~/.dir_colors/dircolors-solarized/dircolors.ansi-universal ~/.dircolors

# update ~/.bashrc
sed -i'.bak' "s/#alias grep='grep --color=auto'/alias grep='grep --color=auto'/" ~/.bashrc
