#!/usr/bin/env bash
FROM="$1"
TO="$2"

if [[ $(date +%u) -gt 4 ]]; then
echo $FROM $TO
   rsync -Crazp $FROM $TO
else
    echo 'Perdão, não estamos na data de rodar esse Script. \
    Tente Novamente Amanhã'
    exit
fi
