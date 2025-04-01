#!/bin/bash

read -p "pls provide a domain name: " domainname

echo "The domain $domainname has the IP address:"
host $domainname | grep "has address" | awk '{print $4}'
