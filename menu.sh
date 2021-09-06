#!/bin/bash
#Menu
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
clear
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
echo -e ""
echo -e "${GREEN}Waktu          : $jam"
echo -e "Hari           : $hari"
echo -e "Tanggal        : $tnggl"
echo -e "ISP Name       : $ISP"
echo -e "City           : $CITY"
echo -e "IP VPS         : $IPVPS"
echo -e ""
echo -e "${RED}=============================-Menu-=============================${NC}"
echo -e "${GREEN}* Script       : WHY - PROJECT  "
echo -e "* menu         : List of Main Commands "
echo -e ""
echo -e "${RED}=========================-SSH & OpenVPN-========================${NC}"
echo -e "${RED}========================-SSH & OpenVPN-============ ============${NC}"
echo -e "${GREEN}* usernew     : Create SSH and OpenVPN account"
echo -e "* trial             : Create SSH account and OpenVPN 24 Hour Trial"
echo -e "* renew         : Extend SSH & OpenVPN Account Active Period"
echo -e "* deluser       : Delete SSH and OpenVPN accounts"
echo -e "* cek              : Check User Login SSH & OpenVPN"
echo -e "* member      : View list of Members of SSH and OpenVPN accounts"
echo -e "* delete          : Delete expired SSH and OpenVPN accounts"
echo -e "* autokick      : Setting Auto Kill Multi Login"
echo -e "* checklim     : Show Multi Login SSH"
echo -e "* restart         : Restart the SSH WS Python service, Dropbear,"
echo -e "                         Webmin,Squid,OpenVPN, SSH and Stunnel "
echo -e ""
echo -e "${RED}===========================-Wireguard-========================={NC}"
echo -e "${GREEN}* add-wg        : Buat akun Wireguard"
echo -e "* del-wg        : Hapus akun Wireguard"
echo -e "* renew-wg      : Perbarui akun Wireguard"
echo -e "* wg show      : Cek tampilan Wireguard"
echo -e ""
echo -e "${RED}==========================-L2TP/IPSEC-=========================${NC}"
echo -e "${GREEN}* add-l2tp      : Buat akun L2TP / IPSEC "
echo -e "* del-l2tp      : Hapus akun L2TP / IPSEC "
echo -e "* renew-l2tp    : Perbarui akun L2TP / IPSEC "
echo -e ""
echo -e "${RED}=============================-PPTP-============================${NC}"
echo -e "${GREEN}* ${GREEN}add-pptp      : Buat akun PPTP"
echo -e "* del-pptp      : Hapus akun PPTP "
echo -e "* renew-pptp    : Perbarui akun PPTP "
echo -e ""
echo -e "${RED}=============================-SSTP-============================${NC}"
echo -e "${GREEN}* add-sstp      : Buat akun SSTP"
echo -e "* del-sstp      : Hapus akun SSTP "
echo -e "* renew-sstp    : Perbarui akun SSTP "
echo -e ""
echo -e "${RED}=============================-SSR-=============================${NC}"
echo -e "${GREEN}* add-ssr       : Buat akun shadowsocks-R"
echo -e "* del-ssr       : Hapus akun shadowsocks-R"
echo -e "* renew-ssr     : Perbarui akun shadowsocks-R"
echo -e "* ssr          : Tampilkan menu shadowsocks-R lainnya"
echo -e ""
echo -e "${RED}========================-Shadowsocks OBFS-=====================${NC}"
echo -e "${GREEN}* add-ss        : Buat akun shadowsocks"
echo -e "* del-ss        : Hapus akun shadowsocks"
echo -e "* rene-wss      : Perbarui akun shadowsocks"
echo -e ""
echo -e "${RED}=============================-V2RAY-===========================${NC}"
echo -e "${GREEN}* add-ws        : Buat akun vmess"
echo -e "* del-ws        : Hapus akun vmess"
echo -e "* renew-ws      : Perbarui akun vmess"
echo -e "* certv-2ray    : Perbarui serifikat vmess"
echo -e ""
echo -e "${RED}=============================-VLESS-===========================${NC}"
echo -e "${GREEN}* add-vless     : Buat akun vless"
echo -e "* del-vless     : Hapus akun vless"
echo -e "* renew-vless   : Perbarui akun vless"
echo -e ""
echo -e "${RED}=============================-Trojan-==========================${NC}"
echo -e "* ${GREEN}add-tr        : Buat akun trojan"
echo -e "* del-tr        : Hapus akun trojan"
echo -e "* renew-tr      : Perbarui akun trojan"
echo -e ""
echo -e "${RED}=============================-SYSTEM-==========================${NC}"
echo -e "${GREEN}* add-host      : Buat domain untuk VPS"
echo -e "* webmin       : Tampilkan menu webmin"
echo -e "* ram          : Cek Penggunaan ram VPS"
echo -e "* reboot       : Reboot VPS"
echo -e "* speedtest    : Tes kecepatan VPS"
echo -e "* info         : Informasi Spek VPS"
echo -e "* about        : Informasi script autossh"
echo -e ""
echo -e "${RED}===============================================================${NC}"
echo -e "${NC}"
read -p "     Select From Options [1-8 or x] :  " menu
echo -e   ""
case $menu in
1)
usernew
;;
2)
renew
;;
3)
deluser
;;
4)
cek
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac
