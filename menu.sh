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
echo -e "${RED}=============================-Menu-============================="
echo -e "* ${GREEN}Script       : YNTKTS "
echo -e "* menu         : List of Main Commands "
echo -e ""
echo -e "${RED}=========================-SSH & OpenVPN-========================"
echo -e "* ${GREEN}usernew      : Buat akun SSH dan OpenVPN"
echo -e "* trial        : Buat akun SSH dan OpenVPN Trial 24 Jam"
echo -e "* renew        : Memperpanjang Masa Aktif Akun SSH & OpenVPN"
echo -e "* deluser      : Hapus akun SSH dan OpenVPN"
echo -e "* member       : Lihat daftar Member akun SSH dan OpenVPN"
echo -e "* delete       : Hapus akun SSH dan OpenVPN yang sudah expired"
echo -e "* autokick     : Tendang User Menggunakan Tendangan Nuklir Mikey"
echo -e "* ceklim       : Tampilkan Multi Login SSH"
echo -e "* restart      : Mulai ulang service SSH WS Python, Dropbear," 
echo -e "                 Webmin,Squid,OpenVPN, SSH dan Stunnel "
echo -e ""
echo -e "${RED}===========================-Wireguard-========================="
echo -e "* ${GREEN}add-wg        : Buat akun Wireguard"
echo -e "* del-wg        : Hapus akun Wireguard"
echo -e "* renew-wg      : Perbarui akun Wireguard"
echo -e "* wg show      : Cek tampilan Wireguard"
echo -e ""
echo -e "${RED}==========================-L2TP/IPSEC-========================="
echo -e "* add-l2tp      : Buat akun L2TP / IPSEC "
echo -e "* del-l2tp      : Hapus akun L2TP / IPSEC "
echo -e "* renew-l2tp    : Perbarui akun L2TP / IPSEC "
echo -e ""
echo -e "${RED}=============================-PPTP-============================"
echo -e "* ${GREEN}add-pptp      : Buat akun PPTP"
echo -e "* del-pptp      : Hapus akun PPTP "
echo -e "* renew-pptp    : Perbarui akun PPTP "
echo -e ""
echo -e "${RED}=============================-SSTP-============================"
echo -e "* ${GREEN}addsstp      : Buat akun SSTP"
echo -e "* del-sstp      : Hapus akun SSTP "
echo -e "* renew-sstp    : Perbarui akun SSTP "
echo -e ""
echo -e "${RED}=============================-SSR-============================="
echo -e "* ${GREEN}add-ssr       : Buat akun shadowsocks-R"
echo -e "* del-ssr       : Hapus akun shadowsocks-R"
echo -e "* renew-ssr     : Perbarui akun shadowsocks-R"
echo -e "* ssr          : Tampilkan menu shadowsocks-R lainnya"
echo -e ""
echo -e "${RED}========================-Shadowsocks OBFS-====================="
echo -e "* ${GREEN}add-ss        : Buat akun shadowsocks"
echo -e "* del-ss        : Hapus akun shadowsocks"
echo -e "* rene-wss      : Perbarui akun shadowsocks"
echo -e ""
echo -e "${RED}=============================-V2RAY-==========================="
echo -e "* ${GREEN}add-ws        : Buat akun vmess"
echo -e "* del-ws        : Hapus akun vmess"
echo -e "* renew-ws      : Perbarui akun vmess"
echo -e "* certv-2ray    : Perbarui serifikat vmess"
echo -e ""
echo -e "${RED}=============================-VLESS-==========================="
echo -e "* ${GREEN}add-vless     : Buat akun vless"
echo -e "* del-vless     : Hapus akun vless"
echo -e "* renew-vless   : Perbarui akun vless"
echo -e ""
echo -e "${RED}=============================-Trojan-=========================="
echo -e "* ${GREEN}add-tr        : Buat akun trojan"
echo -e "* del-tr        : Hapus akun trojan"
echo -e "* renew-tr      : Perbarui akun trojan"
echo -e ""
echo -e "${RED}=============================-SYSTEM-=========================="
echo -e "* ${GREEN}add-host      : Buat domain untuk VPS"
echo -e "* webmin       : Tampilkan menu webmin"
echo -e "* ram          : Cek Penggunaan ram VPS"
echo -e "* reboot       : Reboot VPS"
echo -e "* speedtest    : Tes kecepatan VPS"
echo -e "* info         : Informasi Spek VPS"
echo -e "* about        : Informasi script autossh"
echo -e ""
echo -e "${RED}==============================================================="
echo -e "${NC}"
