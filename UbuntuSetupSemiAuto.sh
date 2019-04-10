#!/bin/bash

#====================================================================

# aptのアップデート

#====================================================================

sudo apt update

sudo apt -y upgrade

sudo apt -y dist-upgrade

sudo apt -y autoremove

sudo apt -y autoclean

#====================================================================

# 『デスクトップ』『音楽』などの日本語フォルダー名を英語表記にする

#====================================================================

LANG=C xdg-user-dirs-gtk-update

#====================================================================

# 不要なソフトウェアの削除（Amazon, Firefox, Thunderbird）

#====================================================================

sudo apt -y remove ubuntu-web-launchers

sudo apt -y remove firefox

sudo apt -y remove thunderbird

#====================================================================

# Ubuntuのテーマの変更

#====================================================================

# Materia / Flat-Plat（マテリアルデザインのテーマ）

sudo apt install materia-gtk-theme

# Papirus（マテリアルデザインのアイコンテーマ）

sudo add-apt-repository ppa:papirus/papirus -y

sudo apt update

sudo apt install papirus-icon-theme -y

# テーマを変更するツール

sudo apt -y install gnome-tweak-tool

#====================================================================

# Dock

#====================================================================

sudo apt install -y plank

#====================================================================

# ソフトウェアのインストール

#====================================================================

# 便利ツール

sudo apt -y install curl

sudo apt -y install git

sudo apt -y install tree

sudo apt -y install tmux

# vim

sudo apt -y install vim

# Visual Studio Code

cd /tmp

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt -y install apt-transport-https

sudo apt -y update

sudo apt -y install code

rm microsoft.gpg 

# Google Chrome

sudo apt update

sudo apt -y install libappindicator1

cd ~/Downloads/

sudo curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo rm google-chrome-stable_current_amd64.deb

# グラフ

sudo apt -y install gnuplot-x11

# C/C++

sudo apt -y install gcc

# Verilog-HDL

sudo apt -y install iverilog

sudo apt -y install gtkwave

# Python

sudo apt -y install python-pip

sudo apt -y install python2.7

sudo apt -y install python2.7-dev

sudo apt -y install python3

sudo pip -y install virtualenv

sudo pip -y install virtualenvwrapper

#====================================================================

# ホームディレクトリにあるフォルダの所有者をrootからpoketorenaに変更する

#====================================================================

cd

sudo chown poketorena:poketorena Desktop/

sudo chown poketorena:poketorena Downloads/

sudo chown poketorena:poketorena Pictures/

sudo chown poketorena:poketorena Music/

sudo chown poketorena:poketorena Videos/

sudo chown poketorena:poketorena Documents/

sudo chown poketorena:poketorena Public/

sudo chown poketorena:poketorena Templates/

#====================================================================

# 背景画像の変更

#====================================================================

cd ~/Pictures/

curl https://wddvdg.by.files.1drv.com/y4mNgQmd6bs28Ig06scSfWMJAUK45534gHBqoemi5AxKsQQBxnOxejPoj7cn3X4wVTd1Ic-KTbDviYCQKbvesm_8j3zxCOlab9Tz-WkDKWSSNWWi2OIa9fEK6rbY9TqxAadbvp985vVYyL-_m0P3KMysJ3Fjdo08Oq5sX-_Bizc6raFdn5ezZmdcIIJyXGLXeFlkEvw6FcVV2IlrXstIHEDcQ/MaterialDesignBackground.jpg?psid=1 > MaterialDesignBackground.jpg

gsettings set org.gnome.desktop.background picture-uri ~/Pictures/MaterialDesignBackground.jpg

#====================================================================

# その他

#====================================================================

echo 'その他にインストールするもの'

echo 'JetBrains Toolbox'

echo 'PyCharm'

echo 'vlc'

echo 'youtube-dl'

echo 'Angular'

echo 'zsh'

echo 'GNOME TweaksでアプリケーションをFlat-Plat-dark-compactに、アイコンをPapirus-Darkに変更してください。'

echo 'GNOME TweaksでPlankを自動起動するように設定してください。'

# GNOME Tweaksの起動

gnome-tweaks
