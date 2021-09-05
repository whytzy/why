#!/bin/bash
#Menu
clear
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
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
echo -e "*${red}Waktu ${NC}          : $jam"
echo -e "*${red}Hari  ${NC}         : $hari"
echo -e "*${red}Tanggal   ${NC}     : $tnggl"
echo -e "*${red}ISP Name ${NC}      : $ISP"
echo -e "*${red}City    ${NC}       : $CITY"
echo -e "*${red}IP VPS  ${NC}       : $IPVPS"
echo -e ""
echo -e "${green}=============================-Menu-=============================${NC}"
echo -e "* ${red}Script ${NC}      : ${green}WHY-PROJECT${NC}"
echo -e "* ${red}menu ${NC}        : ${green}List of Main Commands${NC} "
echo -e ""
echo -e "${green}=========================-SSH & OpenVPN-========================${NC}"
echo -e "* ${red}usernew ${NC}     : ${green}Buat akun SSH dan OpenVPN${NC}"
echo -e "* ${red}trial     ${NC}   : ${green}Buat akun SSH dan OpenVPN Trial 24 Jam${NC}"
echo -e "* renew        : Memperpanjang Masa Aktif Akun SSH & OpenVPN"
echo -e "* deluser      : Hapus akun SSH dan OpenVPN"
echo -e "* member       : Lihat daftar Member akun SSH dan OpenVPN"
echo -e "* delete       : Hapus akun SSH dan OpenVPN yang sudah expired"
echo -e "* autokick     : Tendang User Menggunakan Tendangan Nuklir Mikey"
echo -e "* ceklim       : Tampilkan Multi Login SSH"
echo -e "* restart      : Mulai ulang service SSH WS Python, Dropbear," 
echo -e "                 Webmin,Squid,OpenVPN, SSH dan Stunnel "
echo -e ""
echo -e "===========================-Wireguard-========================="
echo -e "* addwg        : Buat akun Wireguard"
echo -e "* delwg        : Hapus akun Wireguard"
echo -e "* renewwg      : Perbarui akun Wireguard"
echo -e "* wg show      : Cek tampilan Wireguard"
echo -e ""
echo -e "==========================-L2TP/IPSEC-========================="
echo -e "* addl2tp      : Buat akun L2TP / IPSEC "
echo -e "* dell2tp      : Hapus akun L2TP / IPSEC "
echo -e "* renewl2tp    : Perbarui akun L2TP / IPSEC "
echo -e ""
echo -e "=============================-PPTP-============================"
echo -e "* addpptp      : Buat akun PPTP"
echo -e "* delpptp      : Hapus akun PPTP "
echo -e "* renewpptp    : Perbarui akun PPTP "
echo -e ""
echo -e "=============================-SSTP-============================"
echo -e "* addsstp      : Buat akun SSTP"
echo -e "* delsstp      : Hapus akun SSTP "
echo -e "* renewsstp    : Perbarui akun SSTP "
echo -e ""
echo -e "=============================-SSR-============================="
echo -e "* addssr       : Buat akun shadowsocks-R"
echo -e "* delssr       : Hapus akun shadowsocks-R"
echo -e "* renewssr     : Perbarui akun shadowsocks-R"
echo -e "* ssr          : Tampilkan menu shadowsocks-R lainnya"
echo -e ""
echo -e "========================-Shadowsocks OBFS-====================="
echo -e "* addss        : Buat akun shadowsocks"
echo -e "* delss        : Hapus akun shadowsocks"
echo -e "* renewss      : Perbarui akun shadowsocks"
echo -e ""
echo -e "=============================-V2RAY-==========================="
echo -e "* addws        : Buat akun vmess"
echo -e "* delws        : Hapus akun vmess"
echo -e "* renewws      : Perbarui akun vmess"
echo -e "* certv2ray    : Perbarui serifikat vmess"
echo -e ""
echo -e "=============================-VLESS-==========================="
echo -e "* addvless     : Buat akun vless"
echo -e "* delvless     : Hapus akun vless"
echo -e "* renewvless   : Perbarui akun vless"
echo -e ""
echo -e "=============================-Trojan-=========================="
echo -e "* addtr        : Buat akun trojan"
echo -e "* deltr        : Hapus akun trojan"
echo -e "* renewtr      : Perbarui akun trojan"
echo -e ""
echo -e "=============================-SYSTEM-=========================="
echo -e "* addhost      : Buat domain untuk VPS"
echo -e "* webmin       : Tampilkan menu webmin"
echo -e "* ram          : Cek Penggunaan ram VPS"
echo -e "* reboot       : Reboot VPS"
echo -e "* speedtest    : Tes kecepatan VPS"
echo -e "* info         : Informasi Spek VPS"
echo -e "* about        : Informasi script autossh"
echo -e ""
echo -e "==============================================================="
echo -e ""
