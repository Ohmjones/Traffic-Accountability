#!/bin/bash

if [ -z "$1" ]; then
	echo "[*] IPTables Accountability script"
	echo "[*] Uusage : $0 <Target IP>"
	exit 0
fi

echo "[*] IPTables Accountability script"
echo " - Sets ingress/egress rules to monitor bandwidth being sent to/from a specific host."

for server in $1;do
	echo
	echo "[!] Setting rules for this chain..."
	iptables -I INPUT 1 -s $1 -j ACCEPT
	iptables -I OUTPUT 1 -d $1 -j ACCEPT
	iptables -Z;done
	echo "[!] Rules configured, counters reset..."
	echo
	
echo "[!] Call the accounted traffic using cmd: <iptables -vn -L>"
echo " - If you need to restart it use cmd: <iptables -Z>"
