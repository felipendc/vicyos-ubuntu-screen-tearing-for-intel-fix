#!/bin/bash
# github.com/felipendc

#### Setting up my favorite picture as background wallpaper: ####

#cd vicyos-background-wallpaper
#sudo cp -r *.jpg /usr/share/backgrounds
#gsettings set org.gnome.desktop.background picture-uri "/usr/share/backgrounds/andre-benz-unsplash.jpg"
#cd ../


# Refreshing the repo and upgrading the system:
sudo apt-get update
sudo apt-get upgrade


#### Vicyos Personal packages: ####

#songrec
sudo apt-add-repository ppa:marin-m/songrec -y -u
sudo apt-get update
sudo apt install songrec -y

sudo apt install software-properties-common
sudo apt install flatpak -y
sudo apt-get install openjdk-8-jdk
sudo apt install pavucontrol -y
sudo apt install rclone -y
sudo apt install unrar -y
sudo apt install brasero -y
sudo apt install gnome-tweaks -y
sudo apt install simplescreenrecorder -y
sudo apt install xsensors -y
sudo apt install gnome-disk-utility -y
sudo apt install gparted -y
sudo apt install hardinfo -y
sudo apt install gufw -y
sudo apt install repo -y
sudo apt install pyhton3 -y
sudo apt install python3-pip -y
sudo apt install python-pip -y
sudo apt install winff -y
#sudo apt install adb -y
#sudo apt install fastboot -y
#sudo apt install git-lfs -y


############# FLATHUB PACKAGES ################
sudo flatpak install flathub -y com.obsproject.Studio
sudo flatpak install -y flatpak/com.discordapp.Discord.flatpakref
sudo flatpak install -y flatpak/net.codeindustry.MasterPDFEditor.flatpakref
sudo flatpak install -y flatpak/org.gimp.GIMP.flatpakref
sudo flatpak install -y flatpak/org.kde.kdenlive.flatpakref
sudo flatpak install -y flatpak/org.kde.krita.flatpakref
sudo flatpak install -y flatpak/org.qbittorrent.qBittorrent.flatpakref
sudo flatpak install -y flatpak/org.telegram.desktop.flatpakref
sudo flatpak install -y flatpak/org.videolan.VLC.flatpakref
sudo flatpak install -y flatpak/fr.handbrake.ghb.flatpakref
sudo flatpak install -y flatpak/org.filezillaproject.Filezilla.flatpakref
sudo flatpak install -y flatpak/org.inkscape.Inkscape.flatpakref
sudo flatpak install -y flatpak/com.gitlab.bitseater.meteo.flatpakref
sudo flatpak install -y flatpak/org.onlyoffice.desktopeditors.flatpakref
sudo flatpak install -y flatpak/com.hamrick.VueScan.flatpakref


# Installing any pkgs dependencies:
sudo apt install -f


# Auto removing unnecessary packages:
sudo apt autoremove


# Copying all of the files and dotfiles to the HOME folder:
cd root_files
cp -r * ~/
cp -r .[a-zA-Z0-9]* ~/
cd ../


# GNOME EXTENSIONS

# removing older Gnome extension versions:
rm -rf ~/.local/share/gnome-shell/extensions/*sound-output-device-chooser*
rm -rf ~/.local/share/gnome-shell/extensions/*simplenetspeed*

# Installing the extensions:
cd personal-gnome-extensions/

mkdir ~/.local/share/gnome-shell/extensions/
cp -r * ~/.local/share/gnome-shell/extensions/

# Enabling the extension with "gnome-extensions COMMAND [ARGS…]":
gnome-extensions enable sound-output-device-chooser@kgshank.net
gnome-extensions enable simplenetspeed@biji.extension
cd ../


# Installing Fire_DM (Internet Download Manager):
cd Fire_DM
./install_Fire_DM.sh
cd ../


# OBS-STUDIO CONFIG FILES:
cd config_files
cp -r * ~/.config
cd ../


# Installing Firewall and allow Samba: 
#sudo ufw enable
#sudo ufw allow Samba


# Initiating git-lfs for larger packages:
# git lfs install


#########################################
### Run scripts and install packages ####
#########################################

# Setting up Android Build Environment:
#cd android-build-environment-setup && sudo chmod +x *.sh && ./android_build_env.sh && cd ../

# Installing nitroshare in case samba isn't working:
#cd nitroshare && sudo apt install ./nitroshare_0.3.3-1.1_amd64.deb -y --allow-downgrades && cd ../

# Move my personal .bashrc file to my HOME folder:
cd ubuntu-personal-bashrc && sudo cp -r .bashrc* ~/ && cd ../

# Installing 4kvideodownloader:
#cd random && sudo apt install ./4kvideodownloader*.deb -y --allow-downgrades && cd ../

# Installing Google-Chrome Browser:
#cd random && sudo apt install ./google-chrome-stable_current_amd64.deb -y --allow-downgrades && cd ../

# Installing Visual Studio Code:
cd random && sudo apt install ./code*.deb -y --allow-downgrades && cd ../

# Installing Photoscape with wine:
#wine random/photoscape*.exe 

# Installing XDownloader Manager: 
cd random && tar -xf xdm*.tar.xz && sudo ./install.sh && rm -r install.sh readme.txt && cd ../

# Installing SoundCloud Downloader:
#cd scdl && sudo pip3 install scdl && cd ../

# Setting Github email and nickname:
sudo chmod +x upall/*.sh && sudo sh ./upall/setup-git-v1.sh


# Installing Intel Screen Tearing fix, just in case you are using: Intel® HD Graphics
#cd vicyos-ubuntu-screen-tearing-for-intel-fix && sudo chmod +x *.sh && sudo sh ./vicyos-install-linux-screen-tearing-fix.sh && cd ../

# INSTALLING CODE EXTENTIONS:
code --install-extension nico-castell.linux-desktop-file
code --install-extension erikphansen.vscode-toggle-column-selection
code --install-extension ritwickdey.LiveServer
code --install-extension DigitalBrainstem.javascript-ejs-support
code --install-extension dbaeumer.vscode-eslint
code --install-extension hex-ci.stylelint-plus
code --install-extension formulahendry.auto-close-tag
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.vscode-pylance
code --install-extension donjayamanne.python-extension-pack
code --install-extension almenon.arepl
code --install-extension PKief.material-icon-theme
code --install-extension Dart-Code.dart-code
code --install-extension naumovs.color-highlight
code --install-extension akamud.vscode-theme-onedark
code --install-extension Dart-Code.flutter
code --install-extension alexisvt.flutter-snippets
code --install-extension Gruntfuggly.todo-tree
code --install-extension CoenraadS.bracket-pair-colorizer-2
code --install-extension will-stone.plastic
# code --install-extension Nash.awesome-flutter-snippets
# code --install-extension TabNine.tabnine-vscode
# code --install-extension file-icons.file-icons

# UNINSTALLING CODE EXTENSIONS COMMAND:
# code --uninstall-extension 

# LOOKING FOR UPDATE FOR ALL THE PACKAGES:
sudo apt update
sudo apt upgrade -y
sudo apt install -f
sudo apt autoremove

# Reminder:
gedit How_to_setup_rclone.txt
