#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
CYAN='\e[1;36m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
#EDIT IZIN
clear
echo -e ""
echo -e ""
echo -e ""
echo -e " $CYAN ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e "       Change Port All Service"
echo -e " $CYAN ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e ""
echo -e "      [1]  Change Port Stunnel4"
echo -e "      [2]  Change Port OpenVPN"
echo -e "      [3]  Change Port Wireguard"
echo -e "      [4]  Change Port XRAY Vmess"
echo -e "      [5]  Change Port XRAY Vless"
echo -e "      [6]  Change Port XRAY XTLS"
echo -e "      [7]  Change Port Trojan GFW"
echo -e "      [8]  Change Port Xray Grpc"
echo -e "      [9]  Change Port Xray Trojan Tcp Tls"
echo -e "      [10]  Change Port Xray Trojan Tcp Xtls"
echo -e "      [11]  Change Port Xray Trojan Grpc"
echo -e "      [12]  Change Port Squid"
echo -e "      [13]  BACK TO MENU"
echo -e " $CYAN ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e ""
read -p "     Select From Options [1-12 or x] :  " opt
echo -e   ""
case $opt in
1) clear ; port-ssl ; exit ;;
2) clear ; port-ovpn ; exit ;;
3) clear ; port-wg ; exit ;;
4) clear ; port-xws ; exit ;;
5) clear ; port-xvless ; exit ;;
6) clear ; port-xtls ; exit ;;
7) clear ; port-tr ; exit ;;
8) clear ; port-grpc ; exit ;;
9) clear ; port-xtr ; exit ;;
10) clear ; port-trxtls ; exit ;;
11) clear ; port-trgrpc ; exit ;;
12) clear ; port-squid ; exit ;;
13) clear ; menu ; exit ;;
x) exit ;;
*) echo "Please enter a correct number" ;;
esac
