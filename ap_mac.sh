#!/bin/bash
echo "ip mac" | tee cache/ap_mac.txt
for ip in `cat cache/ap_list.txt`; do
   while read  mac; do
     echo $ip $mac | tee -a cache/ap_mac.txt
   done < <(ssh admin@$ip /sbin/ifconfig | grep -E "HWaddr (.*)" | sed  "s/Link encap:.* HWaddr//g") #(echo $ifconfig)
done
