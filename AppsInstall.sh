#!/bin/bash
while true
do
clear
echo "============================================================="
echo "=  Instalador Automático de Programas - By Jefferson Vidal  ="
echo "============================================================="
echo "	Atualizar Sistema - 1:"
echo "	Instalar Pacotes Essenciais - 2:"
echo "	Instalar MySQL 5.5 - 14.04 LTS - 3:"
echo "	Instalar MysQL 5.6 - 15.04 ou superior - 4:"
echo "	Instalar MysQL Workbench - 5:"
echo "	Instalar PHP5 - 6:"
echo "	Instalar Wine 1.7 - 7:"
echo "	Instalar Gimp - 8:"
echo "	Instalar Simple Screen Recorder (Grava Video) - 9:"
echo "	Instalar Kdenliver (Editor de Video) - 10:"
echo "	Instalar Audacity (Grava e Edita Audio) - 11:"
echo "	Instalar Natron x64 - (Similar ao AfterFX) - 12:"
echo "	Instalar OpenShot (Efeitos+Editor de Video) - 13:"
echo "	Instalar Driver de Video nVidia GeForce GT 740M - 14:"
echo "	Instalar PopCorn Time - (Similar NetFlix Gratuito) - 15:"
echo "	Instalar RetroArch - Emulador de Games Antigos - 16:"
echo "============================================================="
echo "===============	  Para Web Development	    ==============="
echo "============================================================="
echo "	Git	- 17:"
echo "	NodeJS	- 171:"
echo "	Composer - 18:"
echo "	Java 8 - 19:"
echo "	Codec FFMPEG - 20:"
echo "	Format Junkie (Converte Video) - 21:"
echo "	"
echo "	"
echo "	"
echo "	q para sair q:"
echo -e "\n"
echo -e "Digite sua escolha \c"

read answer

case "$answer" in

1) sudo add-apt-repository ppa:ondrej/php5;
sudo add-apt-repository -y ppa:webupd8team/java;
sudo apt-get update; sudo apt-get upgrade ;;

2) sudo apt-get install build-essential;
sudo apt-get install module-assistant;
sudo apt-get install ubuntu-restricted-extras;
sudo apt-get update ;;

3) sudo apt-get install mysql-client-5.5 mysql-client-core-5.5 mysql-common mysql-server-5.5 mysql-server-core-5.5;
sudo apt-get update ;;

4) sudo apt-get install mysql-client-5.6 mysql-client-core-5.6 mysql-common mysql-server-5.6 mysql-server-core-5.6;
sudo apt-get update ;;

5) sudo apt-get install mysql-workbench mysql-workbench-data ;;

6) sudo apt-get update;
sudo apt-get update;
sudo apt-get install python-software-properties;
sudo apt-get update;
sudo apt-get install php5;
sudo apt-get update;
sudo apt-get install php5-mysql;
sudo apt-get install pdo-mysql;
sudo apt-get install curl libcurl3 libcurl3-dev php5-curl;
sudo apt-get install php5-gd;
sudo apt-get update;
service apache2 reload ;;

7) sudo add-apt-repository ppa:ubuntu-wine/ppa
 sudo apt-get update
 sudo apt-get install wine1.7 winetricks  ;;
#Para remover o wine1.7
#sudo apt-get remove wine1.7 winetricks 
# Para remover completamente:
#sudo apt-get remove wine
#rm -rf $HOME/.wine
#rm -f $HOME/.config/menus/applications-merged/wine*
#rm -rf $HOME/.local/share/applications/wine
#rm -f $HOME/.local/share/desktop-directories/wine*
#rm -f $HOME/.local/share/icons/????_*.xpm 
8) sudo add-apt-repository ppa:otto-kesselgulasch/gimp;
sudo apt-get update;
sudo apt-get install gimp ;;

9) sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder;
sudo apt-get update;
sudo apt-get install simplescreenrecorder;
sudo apt-get install simplescreenrecorder-lib:i386 ;;

10) sudo add-apt-repository ppa:sunab/kdenlive-release && sudo apt-get update && sudo apt-get install kdenlive ;;

11) sudo add-apt-repository ppa:audacity-team/daily;
sudo apt-get update;
sudo apt-get install audacity ;;

12) cd ~/Downloads;
wget http://ufpr.dl.sourceforge.net/project/natron/Natron_Linux_install_bundle_x86-64bit_v0.9.6.tar;
tar -xf Natron_Linux_install_bundle_*_v0.9.6.tar;
sudo apt-get install libegl1-mesa;
sudo ./Natron_Linux_install_bundle_*_v0.9.6 ;;

13) sudo add-apt-repository ppa:openshot.developers/ppa;
sudo apt-get update;
sudo apt-get install openshot openshot-doc ;;

14) sudo apt-get install ppa-purge;
sudo add-apt-repository ppa:xorg-edgers/ppa;
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-358 nvidia-prime;;
#sudo apt-get install nvidia-340 ;;
#remover o driver
#sudo ppa-purge ppa:xorg-edgers/ppa
15) sudo add-apt-repository ppa:webupd8team/popcorntime;
sudo apt-get update; sudo apt-get upgrade;
sudo apt-get install popcorn-time ;;

16) sudo add-apt-repository ppa:libretro/stable -y && sudo apt-get update && sudo apt-get install retroarch retroarch-* libretro-* -y ;;

17) sudo apt-get install git;;

171) sudo apt-get install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs npm ;;

18) curl -sS https://getcomposer.org/installer | php ;;
19) sudo add-apt-repository ppa:webupd8team/java ;
sudo apt-get update;
sudo apt-get install oracle-java8-installer ;;
20) sudo add-apt-repository ppa:mc3man/trusty-media -y && sudo apt-get update && sudo apt-get install ffmpeg gstreamer0.10-ffmpeg -y;;
21) sudo apt-get install libavcodec-extra-54;
sudo add-apt-repository ppa:jon-severinsson/ffmpeg;
sudo add-apt-repository ppa:noobslab/apps;
sudo apt-get update;
sudo apt-get install formatjunkie;;

q) exit ;;
esac
done

