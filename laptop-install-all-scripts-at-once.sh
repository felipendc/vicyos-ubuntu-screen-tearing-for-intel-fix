#!/bin/bash
# github.com/felipendc

#### Set my favorite picture as background wallpaper: ####

#cd vicyos-background-wallpaper
#sudo cp -r *.jpg /usr/share/backgrounds
#gsettings set org.gnome.desktop.background picture-uri "/usr/share/backgrounds/andre-benz-unsplash.jpg"
#cd ../


# Refreshing the repo and upgrading the system.
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

# sudo apt install pyhton3 -y
# sudo apt install python3-pip -y
#sudo apt install adb -y
#sudo apt install fastboot -y
#sudo apt install git-lfs -y
#sudo apt install winff -y
#sudo apt install python-pip -y


############# FLATHUB PACKAGES ################
flatpak install flathub -y com.obsproject.Studio
flatpak install flathub -y com.discordapp.Discord
flatpak install flathub -y net.codeindustry.MasterPDFEditor
flatpak install flathub -y org.gimp.GIMP
flatpak install flathub -y org.kde.kdenlive
flatpak install flathub -y org.kde.krita
flatpak install flathub -y org.qbittorrent.qBittorrent
flatpak install flathub -y org.telegram.desktop
flatpak install flathub -y org.videolan.VLC
flatpak install flathub -y fr.handbrake.ghb
flatpak install flathub -y org.filezillaproject.Filezilla
flatpak install flathub -y org.inkscape.Inkscape
flatpak install flathub -y com.gitlab.bitseater.meteo
flatpak install flathub -y org.onlyoffice.desktopeditors
flatpak install flathub -y com.hamrick.VueScan


# Install any pkgs dependencies
sudo apt install -f


# Auto remove unnecessary packages:
sudo apt autoremove


# Install Fire_DM (Internet Download Manager)
cd Fire_DM
./install_Fire_DM.sh
cd ../


# OBS-STUDIO CONFIG FILES
cd config_files
cp -r * ~/.config
cd ../


# Install Firewall and allow Samba: 
#sudo ufw enable
#sudo ufw allow Samba


# Initiate git-lfs for larger packages:
# git lfs install


#########################################
### Run scripts and install packages ####
#########################################

# Setup Android Build Environment:
#cd android-build-environment-setup && sudo chmod +x *.sh && ./android_build_env.sh && cd ../

# Install nitroshare in case samba isn't working:
#cd nitroshare && sudo apt install ./nitroshare_0.3.3-1.1_amd64.deb -y --allow-downgrades && cd ../

# Move my personal .bashrc file to my HOME folder:
cd ubuntu-personal-bashrc && sudo cp -r .bashrc* ~/ && cd ../

# Install 4kvideodownloader:
#cd random && sudo apt install ./4kvideodownloader*.deb -y --allow-downgrades && cd ../

# Install Google-Chrome Browser:
#cd random && sudo apt install ./google-chrome-stable_current_amd64.deb -y --allow-downgrades && cd ../

# Install Visual Studio Code:
cd random && sudo apt install ./code*.deb -y --allow-downgrades && cd ../

# Install Photoscape with wine:
#wine random/photoscape*.exe 

# Install XDownloader Manager: 
cd random && tar -xf xdm*.tar.xz && sudo ./install.sh && rm -r install.sh readme.txt && cd ../

# Install SoundCloud Downloader:
#cd scdl && sudo pip3 install scdl && cd ../

# Set Github email and nickname:
sudo chmod +x upall/*.sh && sudo sh ./upall/setup-git-v1.sh


# Install Intel Screen Tearing fix, just in case you are using: Intel® HD Graphics
#cd vicyos-ubuntu-screen-tearing-for-intel-fix && sudo chmod +x *.sh && sudo sh ./vicyos-install-linux-screen-tearing-fix.sh && cd ../

# INSTALL CODE EXTENTIONS:
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

# UNINSTALL CODE EXTENSIONS COMMAND:
# code --uninstall-extension 

# LOOK FOR UPDATE FOR ALL THE PACKAGES:
sudo apt update
sudo apt upgrade -y
sudo apt install -f
sudo apt autoremove

gedit How_to_setup_rclone.txt
