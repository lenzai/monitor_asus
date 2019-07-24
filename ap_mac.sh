#!/bin/bash
echo "ip mac" | tee cache/ap_mac.txt
for ip in `cat cache/ap_list.txt`; do
  ifconfig = `ssh admin@$ip /sbin/ifconfig | grep -E "HWaddr (.*)"`
  echo $ifconfig
#   while read mac; do echo "$i"; done < "$ifconfig"
# #  for mac in `ssh admin@$ip /sbin/ifconfig | grep -E "HWaddr (.*)"`; do
#     echo $ip $mac | tee -a cache/ap_mac.txt
#   done;
done;
