#!/bin/sh

[[ -n "${IPTRAF_OUT}" ]] || ( echo "no IPTRAF_OUT specified"; exit 1 )

if [[ ! -e "${IPTRAF_OUT}" ]]; then
       mkfifo -m 0666 "${IPTRAF_OUT}"
fi

iptraf-ng -B -i all -L "${IPTRAF_OUT}" && sleep infinity
