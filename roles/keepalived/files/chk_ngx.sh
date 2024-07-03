#!/bin/bash
pidof nginx
if [[ $? == 0 ]];then
    iptables -S | grep -i vrrp
    if [[ $? == 0 ]]; then
        iptables -D OUTPUT -p vrrp -j DROP
    fi
    exit 0
else
    iptables -S | grep -i vrrp
    if [[ $? != 0 ]]; then
        iptables -A OUTPUT -p vrrp -j DROP
    fi
    exit 1
fi
