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


#configuracion del bash
echo "export http_proxy=http://usario:contraseña@proxy.com:numeropuerto/" >> /etc/bash.bashrc
echo "export https_proxy=http://usario:contraseña@proxy.com:numeropuerto/" >> /etc/bash.bashrc
echo "export ftp_proxy=http://usario:contraseña@proxy.com:numeropuerto/" >>/etc/bash.bashrc

#configuracion del environment
echo 'http_proxy="http://usario:contraseña@proxy.com:numeropuerto/"' >> /etc/environment
echo 'https_proxy="http://usario:contraseña@proxy.com:numeropuerto/"' >> /etc/environment
echo 'ftp_proxy="http://usario:contraseña@proxy.com:numeropuerto/"' >> /etc/environment

#configuracion del apt
echo 'Acquire::http::proxy "http://usario:contraseña@proxy.com:numeropuerto/";' >> /etc/apt/apt.conf.d/proxy
echo 'Acquire::https::proxy "http://usario:contraseña@proxy.com:numeropuerto/";' >> /etc/apt/apt.conf.d/proxy
echo 'Acquire::ftp::proxy "http://usario:contraseña@proxy.com:numeropuerto/";' >> /etc/apt/apt.conf.d/proxy

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
