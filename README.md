

```

  # hourly update list of ap
  ./ap_list.sh > ap_list.txt

  # real time track connected devices
  ./client_data.sh

  # real time track dhcp leases
  ssh root@10.1.0.1 cat /var/dhcpd/var/db/dhcpd.leases > dhcpd.leases
  ./leases2csv.sh dhcpd.leases > dhcpd.leases.csv
```
