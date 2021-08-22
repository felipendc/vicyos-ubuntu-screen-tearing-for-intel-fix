#!/bin/bash
# github.com/felipendc


######### Set my favorite picture as background wallpaper:
cd vicyos-background-wallpaper
sudo cp -r *.jpg /usr/share/backgrounds
gsettings set org.gnome.desktop.background picture-uri "/usr/share/backgrounds/andre-benz-unsplash.jpg"
cd ../


# Installing Nvidia-Drivers:
# sudo add-apt-repository ppa:graphics-drivers/ppa
# sudo apt-get update
# sudo apt install -y nvidia-driver-450 nvidia-settings
# sudo apt install -y nvidia-driver-390 nvidia-settings


# Refreshing the repo and upgrading the system:
sudo apt-get update
sudo apt-get upgrade
sudo apt install flatpak -y


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
sudo apt install adb -y
sudo apt install fastboot -y
sudo apt install grub-customizer -y
#sudo apt install git-lfs -y


############# FLATHUB PACKAGES ################
sudo flatpak install flathub -y com.obsproject.Studio
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

        
# Installinging any pkgs dependencies:
sudo apt install -f

# Auto remove unnecessary packages:
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

# Initiate git-lfs for larger packages:
# git lfs install


#########################################
### Run scripts and install packages ####
#########################################

# Setting up Android Build Environment:
#cd android-build-environment-setup && sudo chmod +x *.sh && ./android_build_env.sh && cd ../

# Moving my personal .bashrc file to my HOME folder:
cd ubuntu-personal-bashrc && sudo cp -r .bashrc* ~/ && cd ../

# Installing Google-Chrome Browser:
cd random && sudo apt install ./google-chrome-stable_current_amd64.deb -y --allow-downgrades && cd ../

# Installing Visual Studio Code:
cd random && sudo apt install ./code*.deb -y --allow-downgrades && cd ../

# Installing Photoscape with wine:
#wine random/photoscape*.exe 

# Installing XDownloader Manager: 
#cd random && tar -xf xdm*.tar.xz && sudo ./install.sh && rm -r install.sh readme.txt && cd ../

# Setting Github email and nickname:
sudo chmod +x upall/*.sh && sudo sh ./upall/setup-git-v1.sh

# Installing Intel Screen Tearing fix, just in case you are using: Intel® HD Graphics
#cd vicyos-ubuntu-screen-tearing-for-intel-fix && sudo sh ./vicyos-install-linux-screen-tearing-#fix.sh && cd ../

# INSTALLING CODE EXTENTIONS:
code --install-extension ms-vscode.cpptools
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
