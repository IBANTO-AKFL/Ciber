#!/bin/bash



ufw --force reset


ufw default deny incoming
ufw default allow outgoing


ufw allow from 192.168.2.1 to any port 22 proto tcp    # SSH/SFTP
ufw allow from 192.168.2.1 to any port 139 proto tcp   # SMB
ufw allow from 192.168.2.1 to any port 445 proto tcp   # SMB
ufw allow from 192.168.2.1 to any port 161 proto udp   # SNMP
ufw allow from 192.168.2.1 to any port 31010:31110 proto tcp
ufw allow from 192.168.2.1 to any port 50505:50509 proto tcp


ufw allow from 172.16.2.201 to any port 4444 proto udp
ufw allow from 172.16.2.201 to any port 139 proto tcp   
ufw allow from 172.16.2.201 to any port 445 proto tcp   
ufw allow from 172.16.2.201 to any port 3389 proto tcp  


ufw allow 25/tcp    # SMTP
ufw allow 143/tcp   # IMAP
ufw allow 110/tcp   # POP3

ufw allow from 192.168.2.0/24 to any port 3306 proto tcp

ufw --force enable

ufw status verbose
