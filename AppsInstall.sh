#!/bin/bash
while true
do
clear
echo "============================================================="
echo "=  Instalador Automático de Programas - By Jefferson Vidal  ="
echo "============================================================="
echo "	Atualizar Sistema - 1:"
echo "	Instalar Pacotes Essenciais - 2:"
echo "	Instalar MySQL Server - 3:"
echo "	Instalar MySQL Workbench - 4:"
echo "	Instalar PHP7.0 + Apache2 - 5:"
echo "	Instalar Wine 1.7 - 6:"
echo "	Instalar Gimp - 7:"
echo "	Instalar Simple Screen Recorder (Grava Video) - 8:"
echo "	Instalar Kdenliver (Editor de Video) - 9:"
echo "	Instalar Audacity (Grava e Edita Audio) - 10:"
echo "	Instalar Natron x64 - (Similar ao AfterFX) - 11:"
echo "	Instalar OpenShot (Efeitos+Editor de Video) - 12:"
echo "	Instalar Driver de Video nVidia GeForce GT 740M - 13:"
echo "	Instalar PopCorn Time - (Similar NetFlix Gratuito) - 14:"
echo "	Instalar RetroArch - Emulador de Games Antigos - 15:"
echo "============================================================="
echo "===============	  Para Web Development	    ==============="
echo "============================================================="
echo "	Git	- 16:"
echo "	NodeJS	- 17:"
echo "	Composer - 18:"
echo "	Java 8 - 19:"
echo "	Codec FFMPEG - 20:"
echo "	Format Junkie (Converte Video) - 21:"
echo "	"
echo "	q para sair q:"
echo -e "\n"
echo -e "Digite sua escolha \c"

read answer

case "$answer" in

1) sudo apt update; sudo apt upgrade ;;

2) sudo apt install build-essential;
sudo apt install module-assistant;
sudo apt update ;;

3) sudo apt install mysql-server;
sudo apt update ;;

4) sudo apt install mysql-workbench mysql-workbench-data ;;

5) sudo apt update;
sudo apt update && sudo apt -y upgrade && sudo apt -y dist-upgrade;
sudo apt-get install software-properties-common curl
sudo apt install php7.0-mysql;
sudo apt install curl libcurl3 libcurl3-dev php7.0-curl;
sudo apt install php7.0-gd;
sudo apt update;
service apache2 reload ;;

6) sudo add-apt-repository ppa:ubuntu-wine/ppa
 sudo apt update
 sudo apt install wine1.7 winetricks  ;;

7) sudo add-apt-repository ppa:otto-kesselgulasch/gimp;
sudo apt update;
sudo apt install gimp ;;

8) sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder;
sudo apt update;
sudo apt install simplescreenrecorder;
sudo apt install simplescreenrecorder-lib:i386 ;;

9) sudo add-apt-repository ppa:sunab/kdenlive-release && sudo apt update && sudo apt install kdenlive ;;

10) sudo add-apt-repository ppa:audacity-team/daily;
sudo apt update;
sudo apt install audacity ;;

11) cd ~/Downloads;
wget http://ufpr.dl.sourceforge.net/project/natron/Natron_Linux_install_bundle_x86-64bit_v0.9.6.tar;
tar -xf Natron_Linux_install_bundle_*_v0.9.6.tar;
sudo apt install libegl1-mesa;
sudo ./Natron_Linux_install_bundle_*_v0.9.6 ;;

12) sudo add-apt-repository ppa:openshot.developers/ppa;
sudo apt update;
sudo apt install openshot openshot-doc ;;

13) sudo apt install ppa-purge;
sudo add-apt-repository ppa:xorg-edgers/ppa;
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-358 nvidia-prime;;
#sudo apt install nvidia-340 ;;
#remover o driver
#sudo ppa-purge ppa:xorg-edgers/ppa
14) sudo add-apt-repository ppa:webupd8team/popcorntime;
sudo apt update; sudo apt upgrade;
sudo apt install popcorn-time ;;

15) sudo add-apt-repository ppa:libretro/stable -y && sudo apt update && sudo apt install retroarch retroarch-* libretro-* -y ;;

16) sudo apt install git;;

17) sudo apt install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt update
sudo apt install nodejs npm ;;

18) curl -sS https://getcomposer.org/installer | php ;;

19) sudo add-apt-repository ppa:webupd8team/java ;
sudo apt update;
sudo apt install oracle-java8-installer ;;

20) sudo add-apt-repository ppa:mc3man/trusty-media -y && sudo apt update && sudo apt install ffmpeg gstreamer0.10-ffmpeg -y;;

21) sudo apt install libavcodec-extra57;
sudo add-apt-repository ppa:jon-severinsson/ffmpeg;
sudo add-apt-repository ppa:noobslab/apps;
sudo apt update;
sudo apt install formatjunkie;;

q) exit ;;
esac
done

