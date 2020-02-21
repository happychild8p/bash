#!/usr/bin/bash
# Use Variables for IPs

SERVER_IP='192.168.40.133'
NETWORK='192.168.40.0/24'

# Flush rules and Clear all cutsom chains
iptables -F && iptables -X
# Policy as DROP
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
# REJECT can be used for testing purpose (Which part: such as firewall, configuration or any other issue is/are blocking)
# DROP (quietly drop) REJECT (Return icmp-port-unreachable and drop)
# iptables -P INPUT REJECT
# iptables -P OUTPUT REJECT
# iptables -P FORWARD REJECT

# Accepting loopback (internal) packets -i for incoming-interface, -o for outgoing-interface lo is for loopback -j for jump(action)
iptables -I INPUT -i lo -j ACCEPT
iptables -I OUTPUT -o lo -j ACCEPT

# Accepting all related or established connection(packet) to be come in or go out
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT


iptables -A INPUT -i eth0 -p icmp --icmp-type 8 -s 0/0 -d $SERVER_IP -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -o eth0 -m state --state ESTABLISHED,RELATED -j ACCEPT

#--icmp-type echo-request = --icmp-type 8
#--icmp-type echo-reply = --icmp-type 0

## -s source address -d destination address --sport source-port and --dport destination-port
## -p for protocol 
##-m state --state NEW,ESTABLISHED,RELATED

#iptables -I INPUT -i ens33 -p tcp -s 0/0 -d $SERVER_IP --dport 21 -j DROP
#iptables -A INPUT -i eth0 -p tcp -s $NETWORK -d $SERVER_IP --dport 22 -j ACCEPT

INTERNET=eth0

#Refuse spoofed packets claiming to be from externl interface's IP
iptables -A INPUT -i $INTERNET -s $SERVER_IP -j DROP
#Refuse spoofed packets claiming to be loopback from the Internet
iptables -A INPUT -i $INTERNET -s 127.0.0.0/8 -j DROP
#Refuse spoofed packets claiming to be class C private network from internet
iptables -A INPUT -i $INTERNET -s 192.168.0.0/24 -j DROP
