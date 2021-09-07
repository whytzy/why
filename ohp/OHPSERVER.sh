#!/bin/bash
clear
DISTRO=`awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }'`
SERVER_IP=`ip -o route get to 8.8.8.8 | sed -n 's/.*src \([0-9.]\+\).*/\1/p'`

# Welcome Message
echo 'Welcome to WhyTzy96 Script'
echo 'Script Version: 0.1'
echo 'Updated on: 07/08/2021'

# Verify Distro
if ! [[ $DISTRO == "ubuntu" || $DISTRO == "debian" ]]; then
	echo 'This script works only on Debian/Ubuntu OS'
	exit 1
fi

# Check if root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi


if test -f "/root/.tcat_installed"; then
	echo 'TunnelCat VPN Software already installed!'
	exit 1
fi

#PORT SERVER
read -e -p 'Input your Server IP: ' -i $SERVER_IP SERVER_IP
read -e -p 'Input OpenVPN TCP Port: ' -i '1194' OPENVPN_PORT
read -e -p 'Input Privoxy Port: ' -i '8080' PRIVOXY_PORT
read -e -p 'Input ohpserver Port: ' -i '80' OHP_PORT
read -e -p 'Input stunnel Port: ' -i '443' STUNNEL_PORT
read -e -p 'Input DNS Tunnel Domain: ' -i 'dns.tunnel.example.com' DNS_TUNNEL_DOMAIN

# Check input
echo 'Checking Input...'
if ! [[ $SERVER_IP =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
	echo 'Server IP is invalid'
	exit 1
fi

if ! [[ $OPENVPN_PORT =~ ^[0-9]+$ || $OHP_PORT =~ ^[0-9]+$ || $PRIVOXY_PORT =~ ^[0-9]+$ || $STUNNEL_PORT =~ ^[0-9]+$ ]]; then
	echo 'Port is invalid'
	exit 1
fi

echo 'Proceeding with the installation of dependencies'

# Install Dependencies
echo 'Installing Dependencies'
DEBIAN_FRONTEND=noninteractive apt install -y resolvconf privoxy stunnel unzip iproute2 dns2tcp
echo 'Dependencies Installed!' 

# Install TunnelCat VPN Software
echo 'Installing ohpserver'
wget https://github.com/lfasmpao/open-http-puncher/releases/download/0.1/ohpserver-linux32.zip
unzip ohpserver-linux32.zip
rm ohpserver-linux32.zip
mv ohpserver /usr/local/bin/
chmod +x /usr/local/bin/ohpserver

# Setup Privoxy
echo 'Setting up Privoxy'
mkdir /etc/privoxy/
cat <<EOF > /etc/privoxy/config
user-manual /usr/share/doc/privoxy/user-manual
confdir /etc/privoxy
logdir /var/log/privoxy
actionsfile match-all.action
actionsfile default.action
actionsfile user.action
filterfile default.filter
filterfile user.filter
logfile logfile
listen-address  :$PRIVOXY_PORT
toggle 1
enable-remote-toggle  0
enable-remote-http-toggle  0
enable-edit-actions 0
enforce-blocks 0
buffer-limit 4096
enable-proxy-authentication-forwarding 0
forwarded-connect-retries  0
accept-intercepted-requests 0
allow-cgi-request-crunching 0
split-large-forms 0
keep-alive-timeout 5
tolerate-pipelining 1
socket-timeout 300
EOF

cat <<EOF > /etc/privoxy/user.action
{ +block }
/
{ -block }
*.tcat.me
127.0.0.1
$SERVER_IP
EOF

# Setup ohpserver
echo 'Setup ohpserver'
cat <<EOF > /etc/systemd/system/ohpserver.service
[Unit]
Description=Daemonize OpenHTTP Puncher Server
Wants=network.target
After=network.target
[Service]
ExecStart=/usr/local/bin/ohpserver -port $OHP_PORT -proxy 127.0.0.1:$PRIVOXY_PORT -tunnel $SERVER_IP:$OPENVPN_PORT
Restart=always
RestartSec=3
[Install]
WantedBy=multi-user.target
EOF

echo 'Setup dns2tcp'
cat <<EOF > /etc/dns2tcpd.conf
listen = 0.0.0.0
port = 53
user = nobody
chroot = /tmp
pid_file = /var/run/dns2tcp.pid
domain = $DNS_TUNNEL_DOMAIN
resources = ovpn:$SERVER_IP:$OPENVPN_PORT
EOF

# Start Services
echo 'Running Services'
echo "nameserver 8.8.8.8" > /etc/resolvconf/resolv.conf.d/head
systemctl daemon-reload
systemctl restart resolvconf
systemctl restart stunnel4
systemctl restart privoxy
systemctl start ohpserver
systemctl stop systemd-resolved
systemctl start dns2tcp

# Enable on boot
echo 'Start services on boot'
systemctl enable stunnel4
systemctl enable privoxy
systemctl enable dns2tcp
systemctl enable ohpserver


# Installed
echo '' > /root/.tcat_installed

# Installation Completed
echo 'Installation Completed!'
echo ''
echo ''
echo 'Installation Information'
echo '##############################'
echo 'Server IP:' $SERVER_IP
echo 'OpenVPN Port:' $OPENVPN_PORT
echo 'HTTP Port:' $PRIVOXY_PORT
echo 'OHP Port:' $OHP_PORT
echo 'stunnel Port:' $STUNNEL_PORT
echo 'DNS Tunnel Domain:' $DNS_TUNNEL_DOMAIN
echo '##############################'