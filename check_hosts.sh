#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Eroare: Specificați un fișier ca argument."
    exit 1
fi

FISIER=$1

if [ ! -f "$FISIER" ]; then
    echo "Eroare: Fișierul $FISIER nu există."
    exit 1
fi

while read -r linie; do
    ip=$(echo $linie | awk '{print $1}')
    if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        echo "IP valid: $ip"
    fi
done < "$FISIER"
