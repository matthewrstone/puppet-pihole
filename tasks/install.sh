#!/bin/bash
wget -O /tmp/basic-install.sh https://install.pi-hole.net
chmod +x /tmp/basic-install.sh
mkdir /etc/pihole/
cat > /etc/pihole/setupVars.conf <<EOF
INSTALL_WEB=false 
PIHOLE_DNS_1=$PT_primary_dns
PIHOLE_DNS_2=$PT_secondary_dns
PIHOLE_INTERFACE=eth0
IPV4_ADDRESS=$PT_ip_address
QUERY_LOGGING=false
EOF
/tmp/basic-install.sh --unattended

# Set the default password to 'puppetlabs'
pihole -a -p puppetlabs