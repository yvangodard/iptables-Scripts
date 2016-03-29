#! /bin/bash

# Autoriser SNMP sur port dédié pour le serveur centreon
/sbin/iptables -t filter -A INPUT -p udp -m udp -s centreon.pkg.fr --dport 60161 -j ACCEPT -m comment --comment "Supervision PKG"