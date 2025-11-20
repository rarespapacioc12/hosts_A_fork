#!/bin/bash
FISIER="$HOME/etc/hosts"

while read -r linie; do
    ip=$(echo $linie | awk '{print $1}')
    if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        echo "IP valid: $ip"
    else
        echo "IP invalid sau comentariu: $ip"
    fi
done < "$FISIER"
