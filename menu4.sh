#!/bin/bash
#menu
clear
NC='\e[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
echo -e ""
echo -e "${GREEN}>> Menu SSH Websocket & OpenVPN ${NC} "
echo -e ""
echo -e "1).    : Create SSH Websocket & OpenVPN ( usernew ) "
echo -e "2).    : Create Trial SSH Websocket & OpenVPN ( trial ) "
echo -e "3).    : Extend SSH and OpenVPN account Active Period ( renew )"
echo -e "4).    : Check Member SSH Websocket & OpenVPN ( member )"
echo -e "5).    : Check User Login SSH Websocket & OpenVPN ( cek ) "
echo -e "6).    : Delete SSH and OpenVPN accounts ( deluser }"
echo -e "7).    : Auto Delete Multi Login User ( autokick ) "
echo -e "8).    : Delete Expired SSH websocket & OpenVpn ( delete ) "
echo -e "9).    : Check Multi Login User SSH & OpenVPN ( checklim ) "
echo -e "10).   : Menu Restart All Service ( Restart )"
echo -e ""
echo -e "${GREEN}>> Menu V2ray / Vmess ${NC}"
echo -e ""
echo -e "11).   : Create Account Vmess ( add-ws)"
echo -e "12).   : Delete Account Vmess ( del-ws )"
echo -e "13).   : Check User Login Vmess ( cek-ws )"
echo -e "14).   : Extend Account Vmess ( renew-vmess )"
echo -e "15).   : Generate Certv2ray ( cer-v2ray )"
echo -e ""
echo -e "${GREEN}>> Menu V2ray / Vless ${NC}"
echo -e ""
echo -e "16).   : Create  Account Vless ( add-vless ) "
echo -e "17).   : Delete Acount Vless ( del-ws ) "
echo -e "18).   : Extend Acount Vless ( renew-vless )"
echo -e "19).   : Check User Login Vless ( cek-vless )"
echo -e ""
echo -e "${GREEN}>> Menu TrojanGFW ${NC}"
echo -e ""
echo -e "20).    : Create Account TrojanGFW ( add-tr )"
echo -e "21).    : Delete Account TrojanGFW ( del-tr )"
echo -e "22).    : Extend Account TrojanGfw ( renew-tr )"
echo -e "23).    : Check User Login TrojanGFW ( cek-tr )"
echo -e ""
echo -e "${GREEN}>> Menu WireGuard ${NC}"
echo -e ""
echo -e "24).    : Create Account Wireguard ( add-wg )"
echo -e "25).    : Delete Account Wireguard ( del-wg ) "
echo -e "26).    : Extend Account Wireguard ( renew-wg )"
echo -e "27).    : Check Wireguard Display ( wg Show )"
echo -e ""
echo -e "${GREEN}>> Menu L2tp/ipsec ${NC} "
echo -e ""
echo -e "28).    : Create Account L2tp ( add-l2tp )"
echo -e "29).    : Delete Account L2tp ( del-l2tp )"
echo -e "30).    : Extend Account L2tp ( renew-l2tp )"
echo -e ""
echo -e "${GREEN}>> Menu SSTP ${NC}"
echo -e ""
echo -e "31).   : Create Account SSTP ( add-sstp )"
echo -e "32).   : Delete Account SSTP ( del-sstp )"
echo -e "33).   : Extend Account SSTP ( renew-sstp )"
echo -e "34).   : Check User Login SSTP ( cek-sstp )"
echo -e ""
echo -e "${GREEN}>> Menu PPTP ${NC}"
echo -e ""
echo -e "35).   : Create Account PPTP ( add-pptp )"
echo -e "36).   : Delete Account PPTP ( del-pptp )"
echo -e "37).   : Extend Account PPTP ( renew-pptp )"
echo -e "38)    : Check User Login PPTP ( cek-pptp )"
echo -e ""
echo -e "${GREEN}>> Menu ShadowsocksR / SSR ${NC} "
echo -e ""
echo -e "39).   : Create Account SSR ( add-ssr )"
echo -e "40).   : Create Account SSR ( del-ssr )"
echo -e "41).   : Extend Account SSR ( renew-ssr )"
echo -e ""
echo -e "${GREEN}>> Menu Shadowsocks OBFS ${NC} "
echo -e ""
echo -e "42).   : Create Account SS ( add-ss )"
echo -e "43).   : Delete Account SS ( del-ss )"
echo -e "44).   : Check User Login SS ( cek-ss )"
echo -e "45).   : Extend Account SS ( renew-ss )"
echo -e ""
echo -e "${GREEN}>> Informasi System / Develover ${NC}"
echo -e ""
echo -e "46).   : Change Host / Domain ( add-host ) "
echo -e "47).   : Informasi Webmin Menu ( webmin )"
echo -e "48).   : Informasi Port Tunneling DLL ( info ) "
echo -e "49).   : Status Service Informasi ( why ) "
echo -e "50).   : Speedtest Virtual Private Server ( speedtest )"
echo -e "51).   : Information Script Auto Install ( About ) "
echo -e "52).   : Reboot Virtual Private Server ( reboot ) "
echo -e ""
read -p "   Please Input Number  [1-52 or x] :  "  menu
echo -e ""
case $menu in
1)
usernew
;;
2)
trial
;;
3)
renew
;;
4)
member
;;
5)
cek
;;
6)
deluser
;;
7)
autokick
;;
8)
delete
;;
9)
checklim
;;
10)
restart
;;
11)
add-ws
;;
12)
del-ws
;;
13)
cek-ws
;;
14)
renew-ws
;;
15)
cert-v2ray
;;
16)
add-vless
;;
17)
del-vless
;;
18)
renew-vless
;;
19)
cek-vless
;;
20)
add-tr
;;
21)
del-tr
;;
22)
renew-tr
;;
23)
cek-tr
;;
24)
add-wg
;;
25)
del-wg
;;
26)
renew-wg
;;
27)
wg show
;;
28)
add-l2tp
;;
29)
del-l2tp
;;
30)
renew-l2tp
;;
31)
add-sstp
;;
32)
del-sstp
;;
33)
renew-sstp
;;
34)
cek-sstp
;;
35)
add-pptp
;;
36)
del-pptp
;;
37)
renew-pptp
;;
38)
cek-pptp
;;
39)
add-ssr
;;
40)
del-ssr
;;
41)
renew-ssr
;;
42)
add-ss
;;
43)
del-ss
;;
44)
cek-ss
;;
45)
renew-ss
;;
46)
add-host
;;
47)
webmin
;;
48)
info
;;
49)
why
;;
why
;;
50)
speedtest
;;
51)
about
;;
52)
reboot
;;
x)
exit
;;
*)
echo "Please enter an correct number"
;;
esac







