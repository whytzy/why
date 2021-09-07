#!/bin/bash
#tampilan menu 1
clear
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'
nc='\e[0m'
clear 
echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
domen=$(cat /etc/v2ray/domain )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

    echo -e "  ${gl} Cpu Model : ${nc} $cname"
    echo -e "  ${gl} Cpu Cores  : ${nc} $cores"
    echo -e "  ${gl} Cpu Frequensi : ${nc} $freq"
    echo -e "  ${gl} Total amount ram: ${nc}$tram MB"
    echo -e "  ${gl} System Uptime : ${nc} $up"
    echo -e "  ${gl} ISP Name Server : ${nc} $ISP"
    echo -e "  ${gl} City:${nc} $CITY"
	echo -e "  ${gl} Time:${nc} $WKT"
	echo -e "  ${gl} IPVPS:${nc} $IPVPS"
	echo -e "  ${gl} Domain : ${nc} : $domen"
echo -e ""
echo -e "    ---------------------------------------------------------------------------"
echo -e "                          ${yl}MENU OPTIONS ${nc}"
echo -e "    ---------------------------------------------------------------------------"
echo -e "   1${gl} SSH WS & OpenVPN Menu ${nc}"
echo -e "   2${gl} Panel WireGuard ${nc}"
echo -e "   3${gl} Panel L2TP & PPTP Account ${nc}"
echo -e "   4${gl} Panel SSTP  Account ${nc}"
echo -e "   5${gl} Panel SSR & SS Account ${nc}"
echo -e "   6${gl} Panel Vmess ${nc}"
echo -e "   7${gl} Panel Vless ${nc}"
echo -e "   8${gl} Panel TRojan ${nc}"
echo -e "    ---------------------------------------------------------------------------"
echo -e "                          ${yl}SYSTEM MENU ${nc} "
echo -e "    ---------------------------------------------------------------------------"
echo -e "    9${gl} Add Subdomain For VPS ${nc} "
echo -e "    10${gl} Renew Cert V2ray ${nc}"
echo -e "    11${gl} Change Port All Account ${nc}"
echo -e "    12${gl} Autobackup Data VPS ${nc}"
echo -e "    13${gl} Backup Data VPS ${nc}"
echo -e "    14${gl} Restore Data VPS ${nc}"
echo -e "    15${gl} Webmin Menu ${nc}"
echo -e "    16${gl} Limit Bandwith Speed Server ${nc}"
echo -e "    17${gl} Check Usage of VPS Ram ${nc}"
echo -e "    18${gl} Reboot VPS ${nc}"
echo -e "    19${gl} Speedtest VPS ${nc}"
echo -e "    20${gl} Information Display System ${nc}"
echo -e "    21${gl} Info Script Auto Install ${nc}"
echo -e "    22${gl} Install BBR ${nc}"
echo -e "    23${gl} Add ID Cloudflare ${nc}"
echo -e "    24${gl} Cloudflare Add-Ons ${nc}"
echo -e "    25${gl} Pointing BUG ${nc}"
echo -e "    26${gl} Clear log ${nc}"
echo -e "    27${gl} Auto Reboot ${nc}"
echo -e "    ---------------------------------------------------------------------------"
echo -e ""
read -p "     Select From Options [1-8 or x] :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
wgr
;;
3)
l2tp
;;
4)
sstpp
;;
5)
ssssr
;;
6)
v2raay
;;
7)
vleess
;;
8)
trojaan
;;
9)
add-host
;;
10)
certv2ray
;;
11)
change-port
;;
12)
autobackup
;;
13)
backup
;;
14)
restore
;;
15)
wbmn
;;
16)
limit-speed
;;
17)
ram
;;
18)
reboot
;;
19)
speedtest
;;
20)
info
;;
21)
about
;;
22)
bbr
;;
23)
cff
;;
24)
cfd
;;
25)
cfh
;;
26)
clear-log
;;
27)
autoreboot
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac


