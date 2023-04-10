#!/bin/bash
#!/bin/bash
# Color Validation
Lred='\e[1;91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
green='\e[32m'
RED='\033[0;31m'
NC='\033[0m'
BGBLUE='\e[1;44m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
# ===================
echo ''
clear
echo ''
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                ⚡ PREMIUM SPEED SCRIPT ⚡                "$NC
echo -e "$green.........................................................."$NC
echo -e "               Autoscript Mod By ( Kyt Project )" | lolcat
echo -e "                    CONTACT TELEGRAM"$NC | lolcat
echo -e "                       @Kytxz"$NC | lolcat
echo -e "                       @rstorx"$NC | lolcat
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                       Tunggu 5 Detik!                    "$NC
echo -e "$green.........................................................."$NC
sleep 5
clear
if [ "${EUID}" -ne 0 ]; then
                echo "You need to run this script as root"
                exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
                echo "OpenVZ is not supported"
                exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
VALIDITY() {
    today=$(date -d "0 days" +"%Y-%m-%d")
    Exp1=$(curl https://raw.githubusercontent.com/myridwan/izinvps/ipuk/ip | grep $MYIP | awk '{print $4}')
    if [[ $today < $Exp1 ]]; then
        echo -e "\e[32mAUTOSCRIPT SUKSES..\e[0m"
        sleep 5
    else
    echo -e "\e[31mScript Anda Telah Expired !!\e[0m";
    echo -e "\e[31mTolong Renew Dengan Owner Script @tau_samawa\e[0m"
    exit 0
    fi
}
IZIN=$(curl https://raw.githubusercontent.com/myridwan/izinvps/ipuk/ip | awk '{print $5}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermohonan diterima...\e[0m"
    VALIDITY
else
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                ⚡ PREMIUM SPEED SCRIPT ⚡                "$NC
echo -e "$green.........................................................."$NC
echo -e "$RED                PERMISSION DENIED/AKSES DITOLAK"$NC
echo -e "               Autoscript Mod By ( Kyt Project )" | lolcat
echo -e "                    CONTACT TELEGRAM"$NC | lolcat
echo -e "                       @Kytxz"$NC | lolcat
echo -e "                       @rstorx"$NC | lolcat
echo -e "$green.........................................................."$NC
echo -e "$BGBLUE                       Tunggu To Exit!                    "$NC
echo -e "$green.........................................................."$NC
sleep 3
    rm -f main.sh
    exit 0
fi
clear
CLNAME=$(curl https://raw.githubusercontent.com/myridwan/izinvps/ipuk/ip | grep $MYIP | awk '{print $2}')
if [ $MYIP = $CLNAME ]; then
echo ""
fi
clear
echo -e "\e[32mloading...\e[0m"
clear
REPO="https://raw.githubusercontent.com/myridwan/abc/ipuk/"
wget -O /usr/sbin/badvpn "${REPO}badvpn/badvpn" >/dev/null 2>&1
chmod +x /usr/sbin/badvpn > /dev/null 2>&1
wget -q -O /etc/systemd/system/badvpn1.service "${REPO}badvpn/badvpn1.service" >/dev/null 2>&1
wget -q -O /etc/systemd/system/badvpn2.service "${REPO}badvpn/badvpn2.service" >/dev/null 2>&1
wget -q -O /etc/systemd/system/badvpn3.service "${REPO}badvpn/badvpn3.service" >/dev/null 2>&1
systemctl disable badvpn1 
systemctl stop badvpn1 
systemctl enable badvpn1
systemctl start badvpn1 
systemctl disable badvpn2 
systemctl stop badvpn2 
systemctl enable badvpn2
systemctl start badvpn2 
systemctl disable badvpn3 
systemctl stop badvpn3 
systemctl enable badvpn3
systemctl start badvpn3 
