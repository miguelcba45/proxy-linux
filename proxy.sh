#! /bin/bash
clear

echo "############################################################"
echo "############################################################"
echo "################ Bienvenidos al sistema ####################"
echo "################### de configuración #######################"
echo "#######################  Proxy #############################"
echo "############################################################"
echo "############################################################"

#usuario

read -p "Introduce el nuevo Usuario: " usuario
read -p "Introduce el nuevo contraseña: " password
read -p "Introduce el nuevo Dirección proxy: " proxy
read -p "Introduce el nuevo Puerto: " puerto


configuracion del bash
echo "export http_proxy=http://$usuario:$password@$proxy:$puerto/" >> /etc/bash.bashrc
echo "export https_proxy=http://$usuario:$password@$proxy:$puerto/" >> /etc/bash.bashrc
echo "export ftp_proxy=http://$usuario:$password@$proxy:$puerto/" >>/etc/bash.bashrc

configuracion del environment
echo 'http_proxy="http://$usuario:$password@$proxy:$puerto/"' >> /etc/environment
echo 'https_proxy="http://$usuario:$password@$proxy:$puerto/"' >> /etc/environment
echo 'ftp_proxy="http://$usuario:$password@$proxy:$puerto/"' >> /etc/environment

configuracion del apt
echo 'Acquire::http::proxy "http://$usuario:$password@$proxy:$puerto/";' >> /etc/apt/apt.conf.d/proxy
echo 'Acquire::https::proxy "http://$usuario:$password@$proxy:$puerto/";' >> /etc/apt/apt.conf.d/proxy
echo 'Acquire::ftp::proxy "http://$usuario:$password@$proxy:$puerto/";' >> /etc/apt/apt.conf.d/proxy

# reset del equipo


#mensaje
clear
echo "############################################################"
echo "############################################################"
echo "################# Configuracón Exitosa #####################"
echo "##################### Felicidades ##########################"
echo "############################################################"
echo "############################################################"

sudo reboot
