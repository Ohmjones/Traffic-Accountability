#!/bin/bash

echo "[!] Clearing IPTables chain setup for exercise..."
iptables -F INPUT
iptables -F OUTPUT
echo
echo "[*] Done."
