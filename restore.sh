#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
clear
cd
InputPass=$(sed -n '1 p' linkbackup | cut -d' ' -f1)
NameUser=$(sed -n '2 p' linkbackup | cut -d' ' -f1)
cekdata=$(curl -sS "https://raw.githubusercontent.com/XC0D3-X/userbackup/main/$NameUser/$NameUser.zip" | grep 404 | awk '{print $1}' | cut -d: -f1)
[[ "$cekdata" = "404" ]] && {
red "Data not found / you never backup"
exit 0
} || {
green "Data found for username $NameUser"
}

echo -e "[ ${green}INFO${NC} ] • Restore Data..."

echo -e "[ ${green}INFO${NC} ] • Downloading data.."
mkdir /root/backup
wget -q -O /root/backup/backup.zip "https://raw.githubusercontent.com/XC0D3-X/userbackup/main/$NameUser/$NameUser.zip" &> /dev/null
echo -e "[ ${green}INFO${NC} ] • Getting your data..."
unzip -P $InputPass /root/backup/backup.zip &> /dev/null
echo -e "[ ${green}INFO${NC} ] • Starting to restore data..."
rm -f /root/backup/backup.zip &> /dev/null
sleep 1
cd /root/backup
echo -e "[ ${green}INFO${NC} ] • Restoring passwd data..."
sleep 1
cp -r /root/backup/test /root/ &> /dev/null
sleep 1
#cp /root/backup/passwd /etc/ &> /dev/null
echo -e "[ ${green}INFO${NC} ] • Restoring admin data..."
sleep 1

echo -e "[ ${green}INFO${NC} ] • Done..."
sleep 1
rm -f /root/backup/backup.zip &> /dev/null
echo
read -n 1 -s -r -p "Press any key to back on menu"
menu
