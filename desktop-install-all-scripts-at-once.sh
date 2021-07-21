#!/bin/bash
# github.com/felipendc

######### Set my favorite picture as background wallpaper:
cd vicyos-background-wallpaper
sudo cp -r *.jpg /usr/share/backgrounds
gsettings set org.gnome.desktop.background picture-uri "/usr/share/backgrounds/zac-ong-_q4-ykeXOPE-unsplash.jpg"
cd ../

# Update the kernel. 
#Source: https://kernel.ubuntu.com/~kernel-ppa/mainline/daily/current/

cd ubuntu-kernel-update
sudo dpkg -i *.deb
cd ../

# Install Nvidia-Drivers

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt install -y nvidia-driver-450 nvidia-settings
#sudo apt install -y nvidia-driver-390 nvidia-settings

###############

sudo apt-get update
sudo apt-get upgrade
sudo apt install flatpak -y

sudo apt install software-properties-common

sudo flatpak install -y FLATPAK/com.discordapp.Discord.flatpakref
sudo flatpak install -y FLATPAK/net.codeindustry.MasterPDFEditor.flatpakref
sudo flatpak install -y FLATPAK/org.clementine_player.Clementine.flatpakref
sudo flatpak install -y FLATPAK/org.gimp.GIMP.flatpakref
sudo flatpak install -y FLATPAK/org.kde.kdenlive.flatpakref
sudo flatpak install -y FLATPAK/org.kde.krita.flatpakref
sudo flatpak install -y FLATPAK/org.qbittorrent.qBittorrent.flatpakref
sudo flatpak install -y FLATPAK/org.telegram.desktop.flatpakref
sudo flatpak install -y FLATPAK/org.videolan.VLC.flatpakref
sudo flatpak install -y FLATPAK/fr.handbrake.ghb.flatpakref
sudo flatpak install -y FLATPAK/org.filezillaproject.Filezilla.flatpakref
sudo flatpak install -y FLATPAK/org.inkscape.Inkscape.flatpakref
#sudo flatpak install -y FLATPAK/com.visualstudio.code.flatpakref
sudo flatpak install -y FLATPAK/com.gitlab.bitseater.meteo.flatpakref
sudo flatpak install -y FLATPAK/org.onlyoffice.desktopeditors.flatpakref
sudo flatpak install -y FLATPAK/com.hamrick.VueScan.flatpakref

###############

# Vicyos  Personal packages:

# JAVA 8 JDK 
sudo apt-get install openjdk-8-jdk

#songrec
sudo apt-add-repository ppa:marin-m/songrec -y -u
sudo apt-get update
sudo apt install songrec -y


sudo apt install adb -y
sudo apt install fastboot -y
sudo apt install rclone -y
sudo apt install unrar -y
sudo apt install pyhton3 -y
sudo apt install python3-pip -y
sudo apt install git-lfs -y
sudo apt install synaptic -y
sudo apt install samba -y
sudo apt install smbclient -y
sudo apt install samba-common-bin -y
sudo apt install smbclient -y
sudo apt install libsmbclient -y
sudo apt install winff -y
sudo apt install brasero -y
sudo apt install gnome-tweaks -y
sudo apt install simplescreenrecorder -y
sudo apt install python-pip -y
sudo apt install youtube-dl -y
sudo apt install dconf-editor -y
sudo apt install thunar -y
sudo apt install com.github.stsdc.monitor -y
sudo apt install gnome-system-monitor -y
sudo apt install ocl-icd-opencl-dev -y
sudo apt install com.github.donadigo.eddy -y
sudo apt install xsensors -y
sudo apt install gnome-disk-utility -y
sudo apt install gparted -y
sudo apt install hardinfo -y
sudo apt install wireless-tools -y
sudo apt install net-tools -y
sudo apt install wine-stable -y
sudo apt install gufw -y


        
# Install any pkgs dependencies
sudo apt install -f

# Auto remove unnecessary packages:
sudo apt autoremove

# Install Fire_DM (Internet Download Manager)
cd Fire_DM
./install_Fire_DM.sh
cd ../

# Install Firewall and allow Samba: 
sudo ufw enable
sudo ufw allow Samba

# Vicyos Personal snaps:
#sudo snap install odio

# Initiate git-lfs for larger packages:
# git lfs install





#########################################
### Run scripts and install packages ####
#########################################

# Setup Android Build Environment:
cd android-build-environment-setup && sudo chmod +x *.sh && ./android_build_env.sh && cd ../

# Install nitroshare in case samba isn't working:
cd nitroshare && sudo apt install ./nitroshare_0.3.3-1.1_amd64.deb -y --allow-downgrades && cd ../

# Move my personal .bashrc file to my HOME folder:
cd ubuntu-personal-bashrc && sudo cp -r .bashrc* ~/ && cd ../

# Install 4kvideodownloader:
#cd random && sudo apt install ./4kvideodownloader*.deb -y --allow-downgrades && cd ../

# Install Google-Chrome Browser:
cd random && sudo apt install ./google-chrome-stable_current_amd64.deb -y --allow-downgrades && cd ../

# Install Visual Studio Code:
cd random && sudo apt install ./code*.deb -y --allow-downgrades && cd ../

# Install Photoscape with wine:
#wine random/photoscape*.exe 

# Install XDownloader Manager: 
#cd random && tar -xf xdm*.tar.xz && sudo ./install.sh && rm -r install.sh readme.txt && cd ../

# Install SoundCloud Downloader:
#cd scdl && sudo pip3 install scdl && cd ../

# Set Github email and nickname:
sudo chmod +x upall/*.sh && sudo sh ./upall/setup-git-v1.sh


# Install Intel Screen Tearing fix, just in case you are using: Intel® HD Graphics
#cd vicyos-ubuntu-screen-tearing-for-intel-fix && sudo sh ./vicyos-install-linux-screen-tearing-#fix.sh && cd ../




# LOOK FOR UPDATE FOR ALL THE PACKAGES:
sudo apt update
sudo apt upgrade -y
sudo apt install -f
sudo apt autoremove

gedit How_to_setup_rclone.txt
